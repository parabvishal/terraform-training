terraform {
  backend "s3" {
    bucket         = "terraform-demo-state"
    key            = "vpc"
    region         = "us-west-2"
    dynamodb_table = "dynamodb-table"
  }
}
