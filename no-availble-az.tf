terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.0.0"
}
provider "aws" {
 region  = "us-west-1"
}
# data "aws_region" "current" {}
# data "aws_availability_zones" "available" {}
data "aws_availability_zones" "available" {
  state = "available"
}
variable "public_subnets_cidr" {
  type = list(any)
  default = ["10.0.2.0/24","10.0.3.0/24","10.0.4.0/24"]
}
variable "number_of_public_subnets" {
  default = 3
}
output "AZ" {
  value = data.aws_availability_zones.available.names
}
resource "aws_vpc" "testapp" {
  cidr_block           = "10.0.0.0/16"
  tags = {
    Name = "test"
  }
}
resource "aws_subnet" "testapp_public_subnet" {
#  count = var.number_of_public_subnets
  count = length(data.aws_availability_zones.available.names) >= 3 ? 3 : length(data.aws_availability_zones.available.names)
  availability_zone       = data.aws_availability_zones.available.names[count.index]
#  availability_zone       = var.availability_zones[count.index]
  cidr_block              = var.public_subnets_cidr[count.index]
  vpc_id                  = aws_vpc.testapp.id
}
output "subnet_availability_zones" {
  value = length(data.aws_availability_zones.available.names) >= 3 ? data.aws_availability_zones.available.names : slice(data.aws_availability_zones.available.names, 0, 2)
}
output "zone_message" {
  value = length(data.aws_availability_zones.available.names) >= 3 ? null : "Please change the zone"
}
