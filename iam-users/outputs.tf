output "all_iam_user" {
<<<<<<< HEAD
=======
  description = "The user's name"
>>>>>>> main
  value       = aws_iam_user.example[*].name
}

output "all_arns" {
  value       = aws_iam_user.example[*].arn
<<<<<<< HEAD
  description = "The ARNs for all users"
=======
>>>>>>> main
}

output "all_iam_acces_key_id" {
  value       = aws_iam_access_key.example[*].id
<<<<<<< HEAD
=======
  description = "The access key ID"
>>>>>>> main
}

output "all_iam_acces_key_secret" {
  value       = aws_iam_access_key.example[*].secret
}

<<<<<<< HEAD
# output "iam-and-key" {
#   value       = "{aws_iam_user.example[*].name} has {aws_iam_access_key.example[*].secret}"
# }

# output "oneLineOutput" {
#   value = <<IAMUSERS
#   User  "${aws_iam_user.example[0].name} has Access Key"
#   IAMUSERS
# }
=======
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




>>>>>>> main
