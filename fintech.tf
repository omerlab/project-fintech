# Create Ec2 instance for application deployment
# Provider block AWS


terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider

provider "aws" {
  region = "us-east-1"
}

# Create a VPC

resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
}
