terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.44.0"
    }
  }

  # Add this backend block here
  backend "s3" {
    bucket         = "infra-jag-25"
    key            = "infra-dynamo/key/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "infra-dynamo"
    encrypt        = true
  }
}

provider "aws" {
  region = "us-east-1"
}
