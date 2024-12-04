module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = "term-ssd-s3-test-state-00001"
  acl    = "private"

  control_object_ownership = true
  object_ownership         = "ObjectWriter"

  versioning = {
    enabled = true
  }
}
