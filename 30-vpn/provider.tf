terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  backend "s3" {
    bucket = "manoj-expense-dev"
    key    = "expense-dev-vpn"
    region = "us-east-1"
    dynamodb_table = "manoj-expense-dev"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}
