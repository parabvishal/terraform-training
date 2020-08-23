provider "aws" {
  region     = "us-west-2"
  access_key = "your access key here"
  secret_key = "your secret key here"
}

variable "vpn_ip" {
  default = "0.0.0.0/0"
}

resource "aws_security_group" "my-sg" {
  name = "terraform-demo"

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = [var.vpn_ip]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = [var.vpn_ip]
  }

  ingress {
    from_port   = 53
    to_port     = 53
    protocol    = "tcp"
    cidr_blocks = [var.vpn_ip]
  }
}
