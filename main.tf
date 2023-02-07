provider "aws" {
  region     = "us-west-2"
  access_key = "my-access-key"
  secret_key = "my-secret-key"
}
#main.tf
resource "aws_iam_user" "example" {
  count = "${length(var.username)}"
  name = "${element(var.username,count.index )
  path = "/system/"
}
resource "aws_iam_access_key" "newemp" {
  count = length(var.username)
  user = element(var.username,count.index)
}
