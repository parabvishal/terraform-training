locals {
  tags = {
    Division    = var.division
    Project     = var.project
    Environment = var.environment
    Created_by  = var.created_by
  }
}

resource "aws_instance" "my-dev-ec2" {
  ami           = var.AMIS
  instance_type = var.list[0]
  tags          = local.tags
}


resource "aws_instance" "my-prod-ec2" {
  ami           = var.AMIS
  instance_type = var.list[0]
  tags          = local.tags
}



resource "aws_ebs_volume" "my-volume" {
  availability_zone = "us-west-2a"
  size              = 10
  tags              = local.tags
}
