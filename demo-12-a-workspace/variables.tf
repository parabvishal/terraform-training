variable "AWS_ACCESS_KEY" {
  default = ""
}

variable "AWS_SECRET_KEY" {
  default = ""
}

variable "AWS_REGION" {
  default = "us-west-2"
}

variable "cidr" {
  type = map

  default = {
    default = "10.50.0.0/16"
    dev     = "10.100.0.0/16"
    prod    = "10.200.0.0/16"
  }
}
