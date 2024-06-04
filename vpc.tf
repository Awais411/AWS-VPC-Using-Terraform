# Configure the AWS Provider (using access key and secret key - not recommended)
provider "aws" {
  region = "us-east-1"  # Replace with your desired region

  # Access key and secret key (replace with your actual credentials but NEVER commit this to version control)
 # access_key = "Insert your access_key"
  #secret_key = "Insert your secret_key"
}

# VPC Module with Demo Configuration
module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "my-demo-vpc"
  cidr = "10.0.0.0/16"

  azs = ["us-east-1a", "us-east-1b", "us-east-1c"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}

