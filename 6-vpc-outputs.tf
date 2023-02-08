# VPC Output Values

# VPC ID
output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

# VPC CIDR blocks
output "vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  value       = module.vpc.vpc_cidr_block
}

# VPC Public Subnets
output "public_subnets" {
  description = "List of IDs of public subnets"
  value       = module.vpc.public_subnets
}

# VPC Public Route Table IDs
output "public_route_table_ids" {
  description = "List of IDs of public route tables"
  value       = module.vpc.public_route_table_ids
}

# VPC Private Subnets
output "private_app_subnets" {
  description = "List of IDs of private subnets"
  value       = module.vpc.private_subnets
}

# VPC Private Application Route Table IDs
output "private_app_route_table_ids" {
  description = "List of IDs of private application route tables"
  value       = module.vpc.private_route_table_ids
}

# VPC Database Subnets
output "private_database_subnets" {
  description = "List of IDs of database subnets"
  value       = module.vpc.database_subnets
}

# VPC Database Route Table IDs
output "private_database_route_table_ids" {
  description = "List of IDs of database route tables"
  value       = module.vpc.database_route_table_ids
}

# VPC Database Subnet Group Name
output "database_subnet_group_name" {
  description = "Name of the database subnet group"
  value       = module.vpc.database_subnet_group_name
}

# VPC Database Subnets
output "database_subnet_ids" {
  description = "List of IDs of database subnets"
  value       = module.vpc.database_subnet_group
}

# VPC Database Subnets
output "database_subnets" {
  description = "List of IDs of database subnets"
  value       = module.vpc.database_subnets
}

# VPC Database database_subnets_cidr_blocks
output "database_subnets_cidr_blocks" {
  description = "List of CIDR blocks of database subnets"
  value       = module.vpc.database_subnets_cidr_blocks
}

# VPC NAT gateway Public IP
output "nat_public_ips" {
  description = "List of public Elastic IPs created for AWS NAT Gateway"
  value       = module.vpc.nat_public_ips
}

# VPC AZs
output "azs" {
  description = "A list of availability zones specified as argument to this module"
  value       = module.vpc.azs
}