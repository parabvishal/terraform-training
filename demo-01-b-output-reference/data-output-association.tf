provider "aws" {
  region     = "us-west-2"
  access_key = "your access key here"
  secret_key = "your secret key here"
}

resource "aws_instance" "my-ec2" {
  ami           = "ami_id"
  instance_type = "t3.micro"

}

resource "aws_eip" "my-eip" {
  vpc = true
}

resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.my-ec2.id
  allocation_id = aws_eip.my-eip.id
}


resource "aws_security_group" "my_sg" {
  name = "terraform-demo"

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["${aws_eip.my-eip.public_ip}/32"]
  }
}
