locals {
  env        = "hipaa"
  region     = "us-east-1"  # AWS equivalent of "eastus2"
  vpc_name   = "hipaa-vpc"
  eks_name   = "dev-cluster"
  eks_version = "1.30"
}