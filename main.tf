# main.tf

resource "null_resource" "foo" {
  triggers = {
    bar = var.project
  }
}

resource "aws_s3_bucket" "resourcely-foobucket_ccYTHXSP6VpVTaLdaaaa" {
  bucket = "resourcely-foobucketaaaaa"
  tags = {
    owner = "infra"
  }
}

