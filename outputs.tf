# VPC
output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.dataplatform-dev-vpc-us-east-2.vpc_id
}

# CIDR blocks
output "vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  value       = module.dataplatform-dev-vpc-us-east-2.vpc_cidr_block
}

# Subnets
output "private_us_east_2a_sn" {
  description = "private_us_east_2a_sn"
  value       = module.dataplatform-dev-vpc-us-east-2.private_us_east_2a_sn
}

output "private_us_east_2b_sn" {
  description = "private_us_east_2b_sn"
  value       = module.dataplatform-dev-vpc-us-east-2.private_us_east_2b_sn
}

output "private_subnets" {
  description = "List of IDs of private subnets"
  value       = module.dataplatform-dev-vpc-us-east-2.private_subnets
}

output "public_us_east_2a_sn" {
  description = "public_us_east_2a_sn"
  value       = module.dataplatform-dev-vpc-us-east-2.public_us_east_2a_sn
}

output "public_us_east_2b_sn" {
  description = "public_us_east_2b_sn"
  value       = module.dataplatform-dev-vpc-us-east-2.public_us_east_2b_sn
}

output "public_subnets" {
  description = "List of IDs of public subnets"
  value       = module.dataplatform-dev-vpc-us-east-2.public_subnets
}
