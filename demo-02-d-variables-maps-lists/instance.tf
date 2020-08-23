resource "aws_instance" "my-ec2" {
  ami           = var.AMIS[var.AWS_REGION]
  instance_type = var.list[1]
}
