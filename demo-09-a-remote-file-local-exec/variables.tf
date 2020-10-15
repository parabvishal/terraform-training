variable "AWS_ACCESS_KEY" {
  default = ""
}

variable "AWS_SECRET_KEY" {
  default = ""
}

variable "AWS_REGION" {
  default = "us-west-2"

}

variable "AMIS" {
  type = map(string)
  default = {
    us-west-2 = "ami-0d6621c01e8c2de2c"
  }

}

variable "PATH_TO_PRIVATE_KEY" {
  default = "mykey"

}

variable "PATH_TO_PUBLIC_KEY" {
  default = "mykey.pub"

}

variable "INSTANCE_USERNAME" {
  default = "ec2-user"

}

variable "AWS_INSTANCE_TYPE" {
  default = "t2.micro"

}
