variable "sg_ports" {
  type        = list(number)
  description = "list of ingress ports"
  default     = [8200, 8201, 8300, 9200, 9500]
}

variable "ACCESS_KEY" {
  default = ""
}

variable "SECRET_KEY" {
  default = ""
}
