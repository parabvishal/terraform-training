variable "list" {
  type        = list
  default     = ["t2.micro", "t2.small", "t2.medium"]
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
  default = "ami-0d6621c01e8c2de2c"
}

variable "is_test" {
  default = "true"
}

variable "division" {
  default = "demo"
}

variable "project" {
  default = "terraform-demo"
}


variable "environment" {
  default = "demo"
}

variable "created_by" {
  default = "Vishal Parab"
}
