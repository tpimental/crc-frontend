locals {


}

// S3
resource "aws_s3_bucket" "tpimental-crc" {
    bucket = "tpimental-crc"
}

resource "aws_s3_bucket_ownership_controls" "tpimental-crc-ctrl" {
  bucket = aws_s3_bucket.tpimental-crc.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "tpimental-crc-acl" {
  depends_on = [aws_s3_bucket_ownership_controls.tpimental-crc-ctrl]

  bucket = aws_s3_bucket.tpimental-crc.id
  acl    = "private"
}
// Cloudfront distribution

// TLS 

// DNS

// Lambda

// DynamoDB for counter