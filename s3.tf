terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "ap-northeast-1"
}

#通常のS3バケット
module "s3_buckets" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "3.1.1"

#バケット名
  bucket = "trfm-ssd-s3-test-000002"

#バケット作成の要否
  create_bucket = true

#バージョンコントロール
  versioning = {
    enabled = true
  }
}
