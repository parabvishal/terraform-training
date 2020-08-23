variable "list" {
  type    = list(string)
  default = ["t2.small", "t2.micro"]
}

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
    us-east-1 = "ami-0d6621c01e8c2d131"
    us-west-2 = "ami-0d6621c01e8c2de2c"
  }
}
