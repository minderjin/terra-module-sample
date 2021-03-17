############################
############## 2. Security
locals {
    bastion_sg = format("%s-%s-sg", var.name, "bastion")
}

resource "aws_security_group" "bastion" {
    name    = local.bastion_sg
    description = "security group for ${var.name}"
    
    vpc_id  = var.vpc_id
    
    # self refer
    ingress {
        from_port = "0"
        to_port = "0"
        protocol = "-1"
        self = true
        description = "self refer"
    }
    
    # ALL
    egress {
        from_port = "0"
        to_port = "0"
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        description = "all"
    }
    
    # SSH
    ingress {
        from_port = "22"
        to_port = "22"
        protocol = "tcp"
        cidr_blocks = var.allow_ip_address
        description = ""
    }
    
    # RDP
    ingress {
        from_port = "3389"
        to_port = "3389"
        protocol = "tcp"
        cidr_blocks = var.allow_ip_address
        description = ""
    }
    
    tags = merge(
        {
            Name = local.bastion_sg
        },
        var.tags
    )
}


############################
############## 3. EC2
resource "aws_instance" "bastion" {
    ami = var.ec2_ami
    instance_type = "t3.micro"
    
    key_name = var.key_name
    
    vpc_security_group_ids = [aws_security_group.bastion.id]
    subnet_id = var.pub_sub_ids[0]
    
    # Termination Protection
    disable_api_termination = var.instance_disable_termination
    # iam_instance_profile = aws_iam_role.ec2_domain.name
    
    root_block_device {
        volume_size = var.volume_size
        volume_type = "gp3"
        delete_on_termination = true
    }
    
    tags = merge(
        {
            Name = format(
                "%s-bastion",
                var.name
            )
        },
        var.tags
    )
}

resource "aws_eip" "bastion" {
    vpc = true
    
    # depends_on = [aws_route_table.public]
    instance = aws_instance.bastion.id
    
    tags = merge(
        {
            Name = format(
                "%s-bastion-eip-%s",
                var.name,
                element(split("", var.public_subnets[0].zone), length(var.public_subnets[0].zone) - 1)
            )
        },
        var.tags
    )
}
