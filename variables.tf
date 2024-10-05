# variables.tf

# Variable for VPC Name
variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
  default     = "my-demo-vpc"
}

# CIDR block for the VPC
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

# Availability zones
variable "availability_zones" {
  description = "List of Availability Zones to use for the subnets"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

# Private subnets
variable "private_subnets" {
  description = "List of private subnet CIDRs"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

# Public subnets
variable "public_subnets" {
  description = "List of public subnet CIDRs"
  type        = list(string)
  default     = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
}

# Enable NAT Gateway
variable "enable_nat_gateway" {
  description = "Whether to enable NAT gateway for the VPC"
  type        = bool
  default     = true
}

# Enable VPN Gateway
variable "enable_vpn_gateway" {
  description = "Whether to enable VPN gateway for the VPC"
  type        = bool
  default     = true
}

# Tags for the VPC resources
variable "tags" {
  description = "Tags to apply to the VPC and subnets"
  type        = map(string)
  default = {
    Terraform   = "true"
    Environment = "dev"
  }
}
