terraform {
  required_version = ">= 0.13.5"
  backend "remote" {
    organization = "Sammyvirtual-solution"

    workspaces {
      name = "s3_bucket"
    }
  }
}

provider "aws" {
        region = "us-east-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "sammybucing.com"

  tags = {
    Name        = "My bucket"
  }
}
