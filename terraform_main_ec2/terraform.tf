
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.25.0"
    }
  }

  # Uncomment and modify the backend if you want remote state storage
  # backend "s3" {
  #   bucket = "nareshawsdevvvv"
  #   key    = "ec2/terraform.tfstate"
  #   region = "us-east-1"
  # }

  required_version = ">= 1.6.3"
}

provider "aws" {
  region = var.region
}
