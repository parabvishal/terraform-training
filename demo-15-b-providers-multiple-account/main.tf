module "vpc" {
  source = "./modules/vpc"

  name = "my-vpc"
  cidr = "10.10.0.0/16"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}


module "vpc" {
  provider = "aws.mumbai"

  source = "./modules/vpc"

  name = "my-vpc"
  cidr = "10.20.0.0/16"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
