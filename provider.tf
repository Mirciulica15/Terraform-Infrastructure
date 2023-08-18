terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.12.0"
    }
  }

  backend "s3" {
    bucket = "terraform-state-mircea-talu-2023"
    key    = "terraform/state"
    region = "eu-west-1"
  }
}

provider "aws" {
  profile = "default"
  region  = "eu-west-1"
}
