provider "aws" {
  region = "eu-west-2"
}

## dev
module "dev_iam_users" {
  source = "./iam-users"
  env   = "dev"
  user_names  = ["nevsa", "cordelia", "kriste", "darleen", "wynnie", "vonnie", "emelita", "maurita", "devinne"]
}

## qa
module "qa_iam_users" {
  source = "./iam-users"
  env   = "qa"
  user_names  = ["nevsa", "cordelia", "kriste", "darleen", "wynnie", "vonnie", "emelita", "maurita", "devinne"]
}

## uat
module "uat_iam_users" {
  source = "./iam-users"
  env   = "uat"
  user_names  = ["nevsa", "cordelia", "kriste", "darleen", "wynnie", "vonnie", "emelita", "maurita", "devinne"]
}

## test
module "test_iam_users" {
  source = "./iam-users"
  env   = "uat"
  user_names  = ["nevsa", "cordelia", "kriste", "darleen", "wynnie", "vonnie", "emelita", "maurita", "devinne"]
}

# prod
module "prod_iam_users" {
  source = "./iam-users"
  env   = "prod"
  user_names  = ["nevsa", "cordelia", "kriste", "darleen", "wynnie", "vonnie", "emelita", "maurita", "devinne"]
}
