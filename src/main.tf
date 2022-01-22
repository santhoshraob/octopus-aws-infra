# Configure the AWS Provider
provider "aws" {
  region = var.region
}

locals {
  tags = {
    Name = "Octopus"
  }
}

# Create a VPC
resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = merge(var.custom_tags, "${local.tags}-VPC")
}

# Create a Subnet
resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"

  tags = merge(var.custom_tags, "${local.tags}-Subnet")
}