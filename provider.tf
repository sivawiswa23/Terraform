terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.68.0"
    }
  }
  backend "s3" {
    region = "us-east-2"
    bucket = "terraform-tfstate33"
    key = "backend/terraform.tfstate"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-2"

}