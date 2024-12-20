# main.tf

resource "null_resource" "foo" {
  triggers = {
    bar = var.project
  }
}

resource "aws_s3_bucket" "resourcely-foobucket_ccYTHXSP6VpVTaLd" {
  bucket = "resourcely-foobucket"
  tags = {
    owner = "infra"
  }
}

resource "aws_s3_bucket_public_access_block" "resourcely-foobucket_ccYTHXSP6VpVTaLd" {
  bucket                  = aws_s3_bucket.resourcely-foobucket_ccYTHXSP6VpVTaLd.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_ownership_controls" "resourcely-foobucket_ccYTHXSP6VpVTaLd" {
  bucket = aws_s3_bucket.resourcely-foobucket_ccYTHXSP6VpVTaLd.id

  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_versioning" "resourcely-foobucket_ccYTHXSP6VpVTaLd" {
  bucket = aws_s3_bucket.resourcely-foobucket_ccYTHXSP6VpVTaLd.id

  versioning_configuration {
    status = "Disabled"
  }

}

resource "aws_s3_bucket" "bucket-1" {
 bucket = "foo-bucket"
   tags = {
      Name        = "My bucket"
      Environment = "Dev"
   }
}

resource "aws_s3_bucket" "resourcely-bucket_VBTsxzFV4pziKNEi" {
  bucket = "resourcely-bucket"
  tags = {
    owner = "infra"
  }
}

resource "aws_s3_bucket_public_access_block" "resourcely-bucket_VBTsxzFV4pziKNEi" {
  bucket                  = aws_s3_bucket.resourcely-bucket_VBTsxzFV4pziKNEi.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_ownership_controls" "resourcely-bucket_VBTsxzFV4pziKNEi" {
  bucket = aws_s3_bucket.resourcely-bucket_VBTsxzFV4pziKNEi.id

  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_versioning" "resourcely-bucket_VBTsxzFV4pziKNEi" {
  bucket = aws_s3_bucket.resourcely-bucket_VBTsxzFV4pziKNEi.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket" "foo-10-28" {
  bucket = "sample2"
  acl    = "authenticated-read"
}

resource "aws_s3_bucket" "foo-10-28-2" {
  bucket = "sample3"
  acl    = "authenticated-read"
}

resource "aws_s3_bucket" "foo-10-28-3" {
  bucket = "sample5"
  acl    = "authenticated-read"
  tags = {
    team = "foo"
  }
}

resource "aws_s3_bucket" "foo-10-29" {
  bucket = "sample2-10-29"
  acl    = "authenticated-read"
  tags = {
    teaf = "footeam"
  }
}
