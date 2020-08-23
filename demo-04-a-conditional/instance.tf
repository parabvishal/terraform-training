resource "aws_instance" "my-dev-ec2" {
  count         = var.is_test == "true" ? 1 : 0
  ami           = var.AMIS
  instance_type = var.list[0]
}


resource "aws_instance" "my-prod-ec2" {
  count         = var.is_test == "false" ? 1 : 0
  ami           = var.AMIS
  instance_type = var.list[1]
}
