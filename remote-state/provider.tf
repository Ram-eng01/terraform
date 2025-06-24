terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
    
  }

  backend "s3" {
    bucket = "rammohan-s3-for-backend"  #create s3 bucket in aws 
    key    = "remote-state-demo"
    region = "us-east-1"
    dynamodb_table = "aws-locking"
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}