# outputs.tf

# Output the VPC ID
output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

# Output the public subnet IDs
output "public_subnets" {
  description = "The IDs of the public subnets"
  value       = module.vpc.public_subnets
}

# Output the private subnet IDs
output "private_subnets" {
  description = "The IDs of the private subnets"
  value       = module.vpc.private_subnets
}

# Output NAT Gateway IDs
output "nat_gateway_ids" {
  description = "The IDs of the NAT gateways"
  value       = module.vpc.nat_gateway_ids
}
