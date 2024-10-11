# main.tf

resource "null_resource" "foo" {
  triggers = {
    bar = var.project
  }
}

resource "aws_s3_bucket" "bucket-1" {
	bucket = "foo-bucket"
        tags = {
    		Name        = "My bucket"
    		Environment = "Dev"
  	}
}
