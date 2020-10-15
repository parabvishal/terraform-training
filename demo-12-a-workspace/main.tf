module "vpc" {
  source = "./modules/vpc"

  name = "my-vpc"
  cidr = lookup(var.cidr, terraform.workspace)

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
