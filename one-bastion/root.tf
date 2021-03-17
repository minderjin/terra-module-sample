module "vpc" {
  # Required
  source = "./vpc"

  # Option 
  # environment = var.environment
  name = var.name
  tags = var.tags

  vpc_cidr            = var.vpc_cidr
  az_names            = var.az_names
  public_subnets      = var.public_subnets
  private_nat_subnets = var.private_nat_subnets
  private_subnets     = var.private_subnets
}

module "instances" {
  # Required
  source = "./instances"

  name = var.name
  tags = var.tags

  public_subnets      = var.public_subnets
  private_nat_subnets = var.private_nat_subnets
  private_subnets     = var.private_subnets

  # module vpc
  vpc_id          = module.vpc.vpc_id
  pub_sub_ids     = module.vpc.public_subnet_ids
  pri_nat_sub_ids = module.vpc.private_nat_subnet_ids
  pri_sub_ids     = module.vpc.private_subnet_ids

  allow_ip_address             = var.allow_ip_address
  instance_disable_termination = var.instance_disable_termination
  key_name                     = var.key_name
  ec2_ami                      = var.ec2_ami
  volume_size                  = var.ec2_volume_size
}
