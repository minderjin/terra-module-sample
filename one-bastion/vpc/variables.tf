# 프로젝트 이름을 입력합니다.
variable "name" {}

# VPC 의 기본 CIDR 정의
variable "vpc_cidr" {}

# Availability Zones
variable "az_names" {}

# 퍼블릭 서브넷 목록을 입력합니다.
variable "public_subnets" {}

# NAT Gateway가 위치할 프라이빗 서브넷 목록을 입력합니다.
variable "private_nat_subnets" {}

# 프라이빗 서브넷 목록을 입력합니다.
variable "private_subnets" {}

# Tags
variable "tags" {}
