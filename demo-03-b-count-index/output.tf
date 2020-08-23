output "usernames" {
  value = aws_iam_user.my-user[*].name
}
