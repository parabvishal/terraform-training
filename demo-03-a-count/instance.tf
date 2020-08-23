
resource "aws_instance" "my-ec2" {
  count         = 5
  ami           = var.AMIS
  instance_type = var.INSTANCE_TYPE
}
