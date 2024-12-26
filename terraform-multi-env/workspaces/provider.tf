terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.76.0"
    }
  }
}

terraform {
  backend "s3" {
    bucket = "aws-remote-locking"
    key    = "workspaces"
    region = "us-east-1"
    dynamodb_table = "remote_state_locking"
  }
}


provider "aws" {
  # Configuration options
  region = "us-east-1"
}