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
  region  = "us-west-1"
}


# -----------> Variables <-----------
variable "instance_tags" {
  description = "Additional resource tags"
  type        = string
  default = "terraform instance"
}


# -----------> Resources <-----------
resource "aws_instance" "example" {
     ami = "ami-0e16c3bc75f23e32b"
     key_name = "techo"
     instance_type = "t2.micro"
     tags = {
      name = var.instance_tags
     }
}
resource "aws_s3_bucket" "s3-bucket" {
  depends_on = [aws_instance.example]

  tags = {
    Owner = aws_instance.example.id
  }
}


# -----------> Outputs <-----------

output "Ec2-instance-ID" {
  value       = aws_instance.example.id
  description = "Aws Instance ID"
  depends_on  = [aws_instance.example]
}


output "Ec2-Instance-Name" {
  value       = var.instance_tags
  description = "aws Instance name"
  depends_on  = [aws_instance.example]
}


output "S3-Bucket-Name" {
  value       = aws_s3_bucket.s3-bucket.bucket_domain_name
  description = "Bucket ARN"
  depends_on  = [aws_s3_bucket.s3-bucket]
}