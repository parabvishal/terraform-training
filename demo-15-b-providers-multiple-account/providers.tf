provider "aws" {
  region = var.AWS_REGION1
}

provider "aws" {
  alias   = "aws-dev"
  profile = "account01"
  region  = var.AWS_REGION2
}
