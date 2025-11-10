terraform {
  backend "s3" {
    bucket = "mnbvcxzkjhgfdsaqwertyukjhgfdszxcvbnm"   # Replace with your unique bucket name
    key    = "eks/pipeline/terraform.tfstate" # Path for the state file
    region = "ap-south-1"                     # Region where bucket exists
  }
}
# first create bucket manually
