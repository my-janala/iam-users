variable "env" {

  description = "Environment name for the user to be created"
  type        = string

  validation {
    condition = length(var.env) >= 2 && can(regex("dev|qa|test|uat|prod", var.env))
    error_message = "The env value must have at least 2 characters and of list \"dev|qa|test|uat|prod\" ."
  }

}

variable "user_names" {
  description = "Create IAM users with these names"
  type        = list(string)

  validation {
    condition = length(var.user_names) != 0
    error_message = "The user_names cannot be null."
  }

}

