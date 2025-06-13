locals {
  region = "us-east-2"

  # AMIs
  mc_server_ami = "ami-0d1b5a8c13042c939" # Default Ubuntu LTS AMI provided by AWS

  # Instance Types
  mc_small_type  = "t2.micro"
  mc_medium_type = ""
  mc_large_type  = ""
}