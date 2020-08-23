resource "aws_iam_user" "my-user" {
  count = 4
  name  = var.IAM_USERS[count.index]
  path  = "/system/"
}
