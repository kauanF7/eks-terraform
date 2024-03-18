terraform {
  required_version = ">= 1.1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  backend "s3" {
    bucket         	   = "techchallenge-fiap-foodtotem"
    key              	   = "state/terraform.tfstate"
    region         	   = "us-east-1"
  }
}

provider "aws" {
  region = var.region
}