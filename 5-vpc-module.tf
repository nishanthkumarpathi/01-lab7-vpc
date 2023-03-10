module "vpc" {
    source  = "terraform-aws-modules/vpc/aws"
    version = "3.19.0"

    name = "${local.name}-${var.vpc_name}"
    cidr = var.vpc_cidr_block

    azs = var.vpc_availability_zones
    public_subnets = var.vpc_public_subnets
    private_subnets = var.vpc_app_subnets
    database_subnets = var.vpc_database_subnets

    # Database Subnet Groups
    create_database_subnet_group = var.vpc_create_database_subnet_group
    create_database_subnet_route_table = var.vpc_create_database_subnet_route_table


    # NAT Gateway
    enable_nat_gateway = var.vpc_enable_nat_gateway
    single_nat_gateway = var.vpc_single_nat_gateway
    one_nat_gateway_per_az = var.vpc_one_nat_gateway_per_az

    # VPC DNS Parameters
    enable_dns_hostnames = true
    enable_dns_support = true

    tags = local.common_tags
    vpc_tags = local.common_tags

      # Additional Tags to Subnets
    public_subnet_tags = {
    Type = "Public Subnets"
    }
  
    private_subnet_tags = {
    Type = "Private Application Subnets"
    }  
  
    database_subnet_tags = {
    Type = "Private Database Subnets"
  }
}