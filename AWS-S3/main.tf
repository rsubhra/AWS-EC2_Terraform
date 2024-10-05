terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.69.0"
    }
random = {
      source = "hashicorp/random"
      version = "3.6.3"
    }
      }
  backend "s3" {
    bucket = "demos-12945712352483216387"
    key = "backend.tfstate"
    region = "us-west-2"
      }
      }

resource "random_id" "s3demo" {
  byte_length = 8
}

provider "aws" {
  # Configuration options
  region = "us-west-2"
}

resource "aws_s3_bucket" "s3demo" {

    bucket = "demos-${random_id.s3demo.dec}"
}

resource "aws_s3_object" "object" {
    bucket = aws_s3_bucket.s3demo.bucket
  source = "./myfile.txt"
  key = "mydata.txt"
}
output "rand_id" {
    value = random_id.s3demo.dec
  
}
