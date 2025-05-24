terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket-venkatappa-mali"
}
resource "aws_instance" "example" {
  ami                     = "ami-084568db4383264d4"
  instance_type           = "t2.micro"
}
