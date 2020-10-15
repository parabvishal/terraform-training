module "vpc" {
  source = "./modules/vpc"

  name = "my-vpc"
  cidr = "10.0.0.0/16"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
