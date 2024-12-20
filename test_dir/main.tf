# main.tf

resource "null_resource" "foo-bar-baz" {
  triggers = {
    foo = var.project
  }
}

resource "aws_s3_bucket" "foo2" {
  bucket = "test"
  tags = {
    teaf = "footeam"
  }
}
