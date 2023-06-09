
# -----------> Terraform Version and Provider <-----------

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"
}

# -----------> Provider <-----------
provider "aws" {
  region  = "us-east-1"
}


