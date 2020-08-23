resource "aws_instance" "my-ec2" {
  ami           = var.AMIS
  instance_type = var.AWS_INSTANCE_TYPE
}
