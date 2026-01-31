terraform {

    backend "s3" {
    bucket  = "fj-king"
    key     = "envs/dev/terraform.tfstate"
    region  = "eu-west-1"
    encrypt = true

    }


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

resource "aws_instance" "fj_node" {
    ami = "ami-03e091ef64f3907f8"
    instance_type = "t3.micro"

    tags = {
      Name = "FJ Node"
    }
  }