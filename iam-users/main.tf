/*
IAM User creation on various environments
*/

resource "aws_iam_user" "example" {
  count = length(var.user_names)
  name  = "${var.user_names[count.index]}-${var.env}"
    tags = {
    env = var.env
  }
}

resource "aws_iam_access_key" "example" {
  count = length(var.user_names)
  user  = aws_iam_user.example[count.index].name
}


