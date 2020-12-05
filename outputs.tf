## Dev
output "all_iam_user" {
  value         = module.dev_iam_users.all_iam_user
}

output "all_arns" {
  value       = module.dev_iam_users.all_arns
  description = "The ARNs for all users"
}

output "all_iam_acces_key_id" {
  value         = module.dev_iam_users.all_iam_acces_key_id
}

output "all_iam_acces_key_secret" {
  value       = module.dev_iam_users.all_iam_acces_key_secret
}

# QA
output "qa_iam_user" {
  value         = module.qa_iam_users.all_iam_user
}

output "qa_all_arns" {
  value       = module.qa_iam_users.all_arns
  description = "The ARNs for all users"
}

output "qa_all_iam_acces_key_id" {
  value         = module.qa_iam_users.all_iam_acces_key_id
}

output "qa_all_iam_acces_key_secret" {
  value       = module.qa_iam_users.all_iam_acces_key_secret
}
