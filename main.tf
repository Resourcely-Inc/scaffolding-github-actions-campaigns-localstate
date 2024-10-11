# main.tf

resource "null_resource" "foo" {
  triggers = {
    bar = var.project
  }
}
