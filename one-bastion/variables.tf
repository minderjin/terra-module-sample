# credentials profile 선택합니다.
variable "profile" {}

# 리전을 입력합니다.
variable "region" {}

# 프로젝트 이름을 입력합니다.
variable "name" {}

# EC2 접속시 사용할 키페어 이름
variable "key_name" {}

# 설치할 OS 의 AMI ID
variable "ec2_ami" {}

# EC2 volume size
variable "ec2_volume_size" {}

# EC2 termination 방지 여부
variable "instance_disable_termination" {}

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

# Tag
variable "tags" {}

# SSH/RDP 접속을 허용할 IP list
variable "allow_ip_address" {}

# DB 포트 정보
variable "db_port" {}
