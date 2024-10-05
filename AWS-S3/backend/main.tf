terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.69.0"
    }
  }
  backend "s3" {
    bucket = "demos-12945712352483216387"
    key = "backend.tfstate"
    region = "us-west-2"
    
  }
  
}