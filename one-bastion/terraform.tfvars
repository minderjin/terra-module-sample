#####################
# Terraform setting #
#####################

# credentials profile 
profile = "default"

region = "ap-northeast-2"

tags = {
  MadeBy = "mzc-ckj"
}


################
# Project name #
################

name = "module-sample"


###################
# Network setting #
###################

vpc_cidr = "10.11.0.0/16"

az_names = [
  "ap-northeast-2a",
  "ap-northeast-2c"
]

public_subnets = [
  {
    zone = "ap-northeast-2a"
    cidr = "10.11.0.0/25"
  },
  {
    zone = "ap-northeast-2c"
    cidr = "10.11.0.128/25"
  }
]

private_nat_subnets = [
  {
    zone = "ap-northeast-2a"
    cidr = "10.11.1.0/25"
  },
  {
    zone = "ap-northeast-2c"
    cidr = "10.11.1.128/25"
  },
]

private_subnets = [
  {
    zone = "ap-northeast-2a"
    cidr = "10.11.10.0/25"
  },
  {
    zone = "ap-northeast-2c"
    cidr = "10.11.10.128/25"
  }
]



####################
# Instance setting #
####################

key_name                     = "ssh-key"
instance_disable_termination = false

// Microsoft Windows Server 2019 Base (2021-03)
ec2_ami = "ami-0133b1a5b9ca9be36"

// CentOS 6
// ec2_ami = "ami-0f2c9898ff2564e90"   


ec2_volume_size = 30

allow_ip_address = [
  "0.0.0.0/0",        #Anywhere
  "211.60.50.190/32", #MZC
]

db_port = "3306"
