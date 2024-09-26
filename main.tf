provider "aws" {
  region = "ap-northeast-1"

  assume_role {
    role_arn  = var.aws_role_arn
  }
}

variable "aws_role_arn" {
  description = "The ARN of the IAM role to assume"
}

resource "aws_s3_bucket" "ssd_bucket" {
  bucket = "ssd-trfm-bucket-test"

  versioning {
    enabled = true
}

}
