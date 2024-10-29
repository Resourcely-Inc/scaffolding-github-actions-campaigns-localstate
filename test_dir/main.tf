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

resource "aws_s3_bucket" "foo-10-29" {
  bucket = "sample-10-29"
  acl    = "authenticated-read"
}
