module "vpc" {
  source              = "./modules/vpc"
  vpc_cidr_block      = var.vpc_cidr_block
  vpc_name            = var.vpc_name
  enable_dns_support  = var.enable_dns_support
  enable_dns_hostnames = var.enable_dns_hostnames
  instance_tenancy    = var.instance_tenancy
}
module "subnets" {
  source        = "./modules/subnets"
  vpc_id        = module.vpc.vpc_id
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  azs           = var.azs
  environment   = var.vpc_name
}
