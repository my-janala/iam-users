variable "env" {
<<<<<<< HEAD
  description = "Environment"
  type        = string
=======
  description = "Environment name for the user to be created"
  type        = string

  validation {
    condition = length(var.env) >= 2 && can(regex("dev|qa|test|uat|prod", var.env))
    error_message = "The env value must have at least 2 characters and of list \"dev|qa|test|uat|prod\" ."
  }
>>>>>>> main
}

variable "user_names" {
  description = "Create IAM users with these names"
  type        = list(string)
<<<<<<< HEAD
  default     = ["nevsa", "cordelia", "kriste", "darleen", "wynnie", "vonnie", "emelita", "maurita", "devinne"]
}

variable "force_destroy" {
  description = "When destroying this user, destroy even if it has non-Terraform-managed IAM access keys, login profile or MFA devices. Without force_destroy a user with non-Terraform-managed access keys and login profile will fail to be destroyed."
  type        = bool
  default     = false
}
=======
  default     = [""]

  validation {
    condition = length(var.user_names) != 0
    error_message = "The user_names cannot be null."
  }

}

>>>>>>> main
