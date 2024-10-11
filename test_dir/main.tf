# main.tf

resource "null_resource" "foo-bar-baz" {
  triggers = {
    foo = var.project
  }
}
