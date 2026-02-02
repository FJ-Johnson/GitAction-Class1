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

resource "aws_instance" "ansible_server" {
    ami = "ami-03e091ef64f3907f8"
    instance_type = "t3.micro"

    tags = {
      Name = "Ansible Server"
    }
  }

  resource "aws_instance" "nginx_node" {
    ami = "ami-096f46d460613bed4"
    instance_type = "t3.micro"

    tags = {
      Name = "Nginx Node"
    }
  }

  resource "aws_instance" "java_node" {
    ami = "ami-0e7ad4fad59eb2b25"
    instance_type = "t3.micro"

    tags = {
      Name = "Java Node"
    }
  }