variable "AWS_INSTANCE_TYPE" {
  default     = "t2.micro"
  description = "AWS instance type"
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
    us-east-1 = "ami_id"
    us-west-2 = "ami_id"
  }
}
