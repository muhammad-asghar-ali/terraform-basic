terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

// ec2 instance
resource "aws_instance" "web" {
  ami           = "ami-000000000000000"
  instance_type = "t3.micro"

  tags = {
    Name = "example ec2"

    // custom tags
    dev = "sam"
  }
}