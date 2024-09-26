provider "aws" {
  region = "ap-northeast-1"

  assume_role {
    role_arn            = var.aws_role_arn
    web_identity_token  = file(var.oidc_token_file)  
  }
}

variable "aws_role_arn" {
  description = "The ARN of the IAM role to assume"
  type        = string
}

variable "oidc_token_file" {
  description = "The path to the OIDC token file"
  type        = string
}

resource "aws_s3_bucket" "ssd_bucket" {
  bucket = "ssd-trfm-bucket-test"

  versioning {
    enabled = true
}

}
