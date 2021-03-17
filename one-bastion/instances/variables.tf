# 프로젝트 이름을 입력합니다.
variable "name" {}

# Tags
variable "tags" {}

variable "allow_ip_address" {}
variable "instance_disable_termination" {}
variable "key_name" {}
variable "ec2_ami" {}
variable "volume_size" {}
variable "public_subnets" {}
variable "private_nat_subnets" {}
variable "private_subnets" {}


#  From module VPC
variable "vpc_id" {}
variable "pub_sub_ids" {}
variable "pri_nat_sub_ids" {}
variable "pri_sub_ids" {}
