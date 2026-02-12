provider "aws" {
  region = "us-east-1"
  default_tags {
    tags = {
      terraform   = "true"
      Application = "crc"
      Owner = "Tyler Pimental"
    }
  }
}

provider "aws" {
  alias = "us_east_1"
  region = "us-east-1"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.32.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.4.3"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "4.0.4"
    }
  }
  required_version = ">1.3.1"
}
