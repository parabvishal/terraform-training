variable "INSTANCE_TYPE" {
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
  default = "us-east-1"
}
