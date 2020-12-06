provider "aws" {
  region = "eu-west-2"
}

module "iam_users" {
  source = "../../"
  env   = "dev"
  user_names  = ["nevsa"]
}
