terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.80.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}


variable "aws_access_key" {}
variable "aws_secret_key" {}



# terraform-AWS-pipeline  is the name of the ( App Registration )
# permission for the App Registration 
# Owner under the subscription
