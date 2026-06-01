terraform {
  required_version = "~> 1.14.4"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket         = "chimdi-tf-bucket"
    region         = "eu-west-2"
    key            = "eks/terraform.tfstate"
    encrypt        = true
    use_lockfile   = true
  }
}

provider "aws" {
  region = var.aws-region
}
