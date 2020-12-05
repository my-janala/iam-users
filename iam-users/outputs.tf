output "all_iam_user" {
  value       = aws_iam_user.example[*].name
}

output "all_arns" {
  value       = aws_iam_user.example[*].arn
  description = "The ARNs for all users"
}

output "all_iam_acces_key_id" {
  value       = aws_iam_access_key.example[*].id
}

output "all_iam_acces_key_secret" {
  value       = aws_iam_access_key.example[*].secret
}

# output "iam-and-key" {
#   value       = "{aws_iam_user.example[*].name} has {aws_iam_access_key.example[*].secret}"
# }

# output "oneLineOutput" {
#   value = <<IAMUSERS
#   User  "${aws_iam_user.example[0].name} has Access Key"
#   IAMUSERS
# }
