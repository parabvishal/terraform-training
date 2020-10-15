data "aws_ami" "amzn_ami" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}

resource "aws_instance" "my-ec2" {
  ami           = data.aws_ami.amzn_ami.id
  instance_type = var.INSTANCE_TYPE
}
