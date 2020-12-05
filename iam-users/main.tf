/*
IAM User creation on various environments
*/

provider "aws" {
  region = "eu-west-2"
}

resource "aws_iam_user" "example" {
  count = length(var.user_names)
  name  = "${var.user_names[count.index]}-${var.env}"
  # name  = var.user_names[count.index]
  force_destroy        = var.force_destroy

}

resource "aws_iam_access_key" "example" {
  count = length(var.user_names)
  user  = aws_iam_user.example[count.index].name
  # user  = aws_iam_user.example[count.index].name
}

