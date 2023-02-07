provider "aws" {
  region     = "us-east-1"
  access_key = "AWS_ACCESS_KEY_ID"
  secret_key = "AWS_SECRET_ACCESS_KEY"
}
#main.tf
resource "aws_iam_user" "example" {
  count = "${length(var.username)}"
  name = "${element(var.username,count.index )}"
  path = "/system/"
}
resource "aws_iam_access_key" "newemp" {
  count = length(var.username)
  user = element(var.username,count.index)
}
