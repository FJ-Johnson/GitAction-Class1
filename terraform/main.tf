terraform {
    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = "~> 5.0"
      }
    }
}

provider "aws" {
    region = "eu-west-1"
}

resource "aws_instance" "fj Node" {
    ami = "ami-03e091ef64f3907f8"
    instance_type = "t3.micro"

    tags = {
      Name = "FJ Node"
    }
  }