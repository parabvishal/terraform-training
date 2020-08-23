locals {
  time = formatdate("DD MMM YYYY hh:mm ZZZ", timestamp())
}

resource "aws_key_pair" "mykey" {
  key_name   = "mykey"
  public_key = file(var.PATH_TO_PUBLIC_KEY)
}

resource "aws_instance" "example" {
  count         = 2
  ami           = lookup(var.AMIS, var.AWS_REGION)
  instance_type = var.AWS_INSTANCE_TYPE
  key_name      = aws_key_pair.mykey.key_name
  tags = {
    Name = element(var.tags, count.index)
  }
}
