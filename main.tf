provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_s3_bucket" "ssd_bucket" {
  bucket = "trfm-ssd-s3-test-state-000001"

  versioning {
    enabled = true
}
}
