output "all_iam_user" {
  description = "The user's name"
  value       = aws_iam_user.example[*].name
}

output "all_arns" {
  value       = aws_iam_user.example[*].arn
  description = "The ARNs for all users"
}

output "all_iam_acces_key_id" {
  value       = aws_iam_access_key.example[*].id
  description = "The access key ID"
}

output "all_iam_acces_key_secret" {
  value       = aws_iam_access_key.example[*].secret
}

output "iam_user_details_id" {
  value = {
    for p in aws_iam_access_key.example :
      p.user => p.id
  }
}

output "iam_user_details_secret" {
  value = {
    for p in aws_iam_access_key.example :
      p.user => p.secret
  }
}

