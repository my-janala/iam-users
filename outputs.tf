# Dev
output "dev_iam_user_details_id" {
  value = module.dev_iam_users.iam_user_details_id
}

output "dev_iam_user_details_secret" {
  value = module.dev_iam_users.iam_user_details_secret
}

# QA
output "qa_iam_user_details_id" {
  value = module.qa_iam_users.iam_user_details_id
}

output "qa_iam_user_details_secret" {
  value = module.qa_iam_users.iam_user_details_secret
}

# UAT
output "uat_iam_user_details_id" {
  value = module.uat_iam_users.iam_user_details_id
}

output "uat_iam_user_details_secret" {
  value = module.uat_iam_users.iam_user_details_secret
}

# Test
output "test_iam_user_details_id" {
  value = module.test_iam_users.iam_user_details_id
}

output "test_iam_user_details_secret" {
  value = module.test_iam_users.iam_user_details_secret
}

#Prod
output "prod_iam_user_details_id" {
  value = module.prod_iam_users.iam_user_details_id
}

output "prod_iam_user_details_secret" {
  value = module.prod_iam_users.iam_user_details_secret

}
