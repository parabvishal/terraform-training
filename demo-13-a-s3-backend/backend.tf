terraform {
  backend "s3" {
    bucket            = "terraform-demo-state"
    key               = "vpc"
    region            = "us-west-2"
    access_key        = "access key here"
    secret_key        = "secret key here"
    dynamodb_endpoint = "dynamodb table name"
  }
}
