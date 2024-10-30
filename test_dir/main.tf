# main.tf

resource "null_resource" "foo-bar-baz" {
  triggers = {
    foo = var.project
  }
}

resource "aws_s3_bucket" "foo1" {
  bucket = "test"
  tags = {
    teaf = "footeam"
  }
}

resource "aws_s3_bucket" "foo" {
  bucket = "sample2"
  acl    = "authenticated-read"
}
