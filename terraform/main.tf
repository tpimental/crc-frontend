locals {
  domain_name = "tpimental.com"
  origin_id   = "s3-site-origin"
}

# --------------------
# S3 Bucket (Private)
# --------------------
resource "aws_s3_bucket" "site" {
  bucket = "tpimental-crc"
}

resource "aws_s3_bucket_public_access_block" "site" {
  bucket = aws_s3_bucket.site.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

# --------------------
# CloudFront OAC
# --------------------
resource "aws_cloudfront_origin_access_control" "site" {
  name                              = "tpimental-oac"
  origin_access_control_origin_type = "s3"
  signing_behavior                  = "always"
  signing_protocol                  = "sigv4"
}

# --------------------
# ACM Certificate (must be in us-east-1)
# --------------------
data "aws_acm_certificate" "site" {
  provider = aws.us_east_1
  domain   = local.domain_name
  statuses = ["ISSUED"]
}

# --------------------
# CloudFront Distribution
# --------------------
resource "aws_cloudfront_distribution" "site" {

  origin {
    domain_name              = aws_s3_bucket.site.bucket_regional_domain_name
    origin_access_control_id = aws_cloudfront_origin_access_control.site.id
    origin_id                = local.origin_id
  }

  enabled             = true
  is_ipv6_enabled     = true
  default_root_object = "index.html"

  aliases = [local.domain_name]

  default_cache_behavior {
    target_origin_id       = local.origin_id
    allowed_methods        = ["GET", "HEAD"]
    cached_methods         = ["GET", "HEAD"]
    viewer_protocol_policy = "redirect-to-https"

    forwarded_values {
      query_string = false
      cookies {
        forward = "none"
      }
    }
  }

  custom_error_response {
    error_code         = 403
    response_code      = 200
    response_page_path = "/index.html"
  }

  custom_error_response {
    error_code         = 404
    response_code      = 200
    response_page_path = "/index.html"
  }

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }

  viewer_certificate {
    acm_certificate_arn = data.aws_acm_certificate.site.arn
    ssl_support_method  = "sni-only"
  }
}

# --------------------
# S3 Bucket Policy (Allow CF Only)
# --------------------
data "aws_iam_policy_document" "site_bucket_policy" {
  statement {
    effect = "Allow"

    principals {
      type        = "Service"
      identifiers = ["cloudfront.amazonaws.com"]
    }

    actions = ["s3:GetObject"]

    resources = ["${aws_s3_bucket.site.arn}/*"]

    condition {
      test     = "StringEquals"
      variable = "AWS:SourceArn"
      values   = [aws_cloudfront_distribution.site.arn]
    }
  }
}

resource "aws_s3_bucket_policy" "site" {
  bucket = aws_s3_bucket.site.id
  policy = data.aws_iam_policy_document.site_bucket_policy.json
}

# --------------------
# Route53
# --------------------
data "aws_route53_zone" "site" {
  name = local.domain_name
}

resource "aws_route53_record" "site" {
  zone_id = data.aws_route53_zone.site.zone_id
  name    = local.domain_name
  type    = "A"

  alias {
    name                   = aws_cloudfront_distribution.site.domain_name
    zone_id                = aws_cloudfront_distribution.site.hosted_zone_id
    evaluate_target_health = false
  }
}
