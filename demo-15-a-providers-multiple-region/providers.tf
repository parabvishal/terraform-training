provider "aws" {
  region = var.AWS_REGION1
}

provider "aws" {
  alias  = "aws-dev"
  region = var.AWS_REGION2
}
