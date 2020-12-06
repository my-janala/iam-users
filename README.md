# iam-users

## Objective

Creating various IAM users

- Users: nevsa, cordelia, kriste, darleen, wynnie, vonnie, emelita, maurita, devinne,  .

- Environments: dev, qa, uat, test, prod

Write simple HCL code to:

- Create users in AWS for each environment: *($USERNAME-$ENV)

- All resources must be created with single `terraform apply`

- Please make your solution available in a public source-code repository.

- Extra point if you nicely format the output with username, access_key, secret access key in one line.

# Usage Example

```
module "dev_iam_users" {
  source = "./iam-users"
  env   = "dev"
  user_names  = ["nevsa", "cordelia", "kriste", "darleen", "wynnie", "vonnie", "emelita", "maurita", "devinne"]
  }
```

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13.0 |
| aws | >= 2.68 |


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| env  | Environment name for the user to be created | string | | yes |
| user_names  | Create IAM users with these names | list(string) | | yes |

## Outpus
 @outputs.tf[outputs.tf]


## Authors

Created by [Mezbaur Rahman](https://github.com/my-janala) - mezbaur.rahman@gmail.com.

## License

MIT Licensed.

>>>>>>> main
