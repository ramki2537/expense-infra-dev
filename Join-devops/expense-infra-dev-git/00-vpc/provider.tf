terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.84.0"
    }
  }
  
  backend "s3" {
    bucket = "gonew-remote-state"
    key    = "vpc-test"
    region = "us-east-1"
    dynamodb_table = "gonew-state-locking"
  }
}

provider "aws" {
  alias  = "west"
  region = "us-east-1"
}
