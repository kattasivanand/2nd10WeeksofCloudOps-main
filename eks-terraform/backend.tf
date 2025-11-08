terraform {
  backend "s3" {
    bucket = "my-eks-terraform-state-12345"   # Replace with your unique bucket name
    key    = "eks/pipeline/terraform.tfstate" # Path for the state file
    region = "ap-south-1"                     # Region where bucket exists
  }
}

