terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
    s3 = {
      source  = "hashicorp/aws"
      version = "~> 2.1.1"
    }
  }
}

provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_s3_bucket" "ssd_bucket_2" {
  bucket = "trfm-ssd-s3-test-000002"

  versioning {
    enabled = true
  }
}
