provider "aws" {
  region     = "us-west-2"
  access_key = "your access key here"
  secret_key = "your secret key here"
}

resource "aws_instance" "my-ec2" {
  ami           = "ami_id"
  instance_type = "t3.micro"

}

output "private_ip" {
  value = aws_instance.my-ec2.private_ip
}

output "instance-id" {
  value = aws_instance.my-ec2.id
}
