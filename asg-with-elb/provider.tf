provider "aws" {
  shared_config_files      = ["/Users/darvi/.aws/config"]
  shared_credentials_files = ["/Users/darvi/.aws/credentials"]
  profile                  = "dtimanage"
  region                   = "us-east-1"
}

terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "terraform-deep-dive-state-bucket"
    key            = "global/s3/asg-with-alb/terraform.tfstate"
    region         = "us-east-1"
    # Replace this with your DynamoDB table name!
    dynamodb_table = "terraform-deep-dive-state-locks"
    encrypt        = true
    profile        = "dtimanage"
  }
}