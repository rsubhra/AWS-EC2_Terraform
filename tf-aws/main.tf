

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.69.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = var.region
}
resource "aws_instance" "myserver" {
    ami ="ami-05134c8ef96964280"
    instance_type = "t2.micro"

    tags = {
        Names = "myserver"
    }
  
}