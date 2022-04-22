provider "aws" {
  shared_config_files      = ["/Users/vivek.dabas/.aws/config"]
  shared_credentials_files = ["/Users/vivek.dabas/.aws/credentials"]
  profile                  = "dtimanage"
  region                   = "us-east-1"
}