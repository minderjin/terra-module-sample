output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_ids" {
  value = module.vpc.public_subnet_ids
}

output "private_nat_subnet_ids" {
  value = module.vpc.private_nat_subnet_ids
}

output "private_subnet_ids" {
  value = module.vpc.private_subnet_ids
}

output "nat_eip" {
  value = module.vpc.nat_eip
}

output "bastion_id" {
  value = module.instances.bastion_id
}

output "bastion_eip" {
  value = module.instances.bastion_eip
}

