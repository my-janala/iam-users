# Dev
output "iam_user_details_id" {
  value = module.iam_users.iam_user_details_id
}

output "iam_user_details_secret" {
  value = module.iam_users.iam_user_details_secret
}

output "all_iam_user" {
  description = "The user's name"
  value       = module.iam_users.all_iam_user
}
