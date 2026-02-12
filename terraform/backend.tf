terraform {
  backend "s3" {
    bucket         = "tpimental-terraform"
    key            = "crc.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-lock"
    encrypt        = true
    profile = "tpim"
  }
}
