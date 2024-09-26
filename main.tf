provider "aws" {
  region = "ap-northeast-1"
}
resource "aws_s3_bucket" "ssd_bucket" {
  bucket = "ssd-trfm-bucket-test"

  versioning {
    enabled = true
}

}
