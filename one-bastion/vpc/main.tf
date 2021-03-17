resource "aws_vpc" "this" {
    cidr_block = var.vpc_cidr
    #instance_tenancy = "default"
    
    enable_dns_hostnames = true

    tags = merge(
        {
            Name = format("%s-vpc", var.name)
        },
        var.tags
    )
}

resource "aws_subnet" "public" {
    count   = length(var.public_subnets)
    
    vpc_id  = aws_vpc.this.id
    
    availability_zone   = var.public_subnets[count.index].zone
    cidr_block  = var.public_subnets[count.index].cidr
    
    # AUTO-ASIGN PUBLIC IP
    map_public_ip_on_launch = true
    
    tags = merge(
        {
            Name = format(
                "%s-public-%s",
                var.name,
                element(split("", var.public_subnets[count.index].zone), length(var.public_subnets[count.index].zone) - 1)
            )
        },
        var.tags,
    )
}

resource "aws_subnet" "private" {
    count   = length(var.private_subnets)
    
    vpc_id  = aws_vpc.this.id
    
    availability_zone   = var.private_subnets[count.index].zone
    cidr_block  = var.private_subnets[count.index].cidr
    
    tags = merge(
        {
            Name = format(
                "%s-private-%s",
                var.name,
                element(split("", var.private_subnets[count.index].zone), length(var.private_subnets[count.index].zone) - 1)
            )
        },
        var.tags,
    )
}

resource "aws_subnet" "nat" {
    count   = length(var.private_nat_subnets)
    
    vpc_id  = aws_vpc.this.id
    
    availability_zone   = var.private_nat_subnets[count.index].zone
    cidr_block  = var.private_nat_subnets[count.index].cidr
    
    tags = merge(
        {
            Name = format(
                "%s-nat-%s",
                var.name,
                element(split("", var.private_nat_subnets[count.index].zone), length(var.private_nat_subnets[count.index].zone) - 1)
            )
        },
        var.tags,
    )
}

resource "aws_route_table" "public" {
    #count = length(var.public_subnets)
    
    vpc_id  = aws_vpc.this.id
    
    tags    = merge(
        {
            Name = format(
                "%s-public-rt",
                var.name,
            )
        },
        var.tags,
    )
}

resource "aws_route_table" "private" {
    #count = length(var.private_subnets)
    
    vpc_id  = aws_vpc.this.id
    
    tags    = merge(
        {
            Name = format(
                "%s-private-rt",
                var.name,
            )
        },
        var.tags,
    )
}

resource "aws_route_table" "nat" {
    #count = length(var.private_nat_subnets)
    
    vpc_id  = aws_vpc.this.id
    
    tags    = merge(
        {
            Name = format(
                "%s-nat-rt",
                var.name,
            )
        },
        var.tags,
    )
}

resource "aws_route_table_association" "public" {
    count   = length(var.public_subnets)
    
    subnet_id   = aws_subnet.public[count.index].id
    route_table_id  = aws_route_table.public.id
}

resource "aws_route_table_association" "private" {
    count   = length(var.private_subnets)
    
    subnet_id   = aws_subnet.private[count.index].id
    route_table_id  = aws_route_table.private.id
}

resource "aws_route_table_association" "nat" {
    count   = length(var.private_nat_subnets)
    
    subnet_id   = aws_subnet.nat[count.index].id
    route_table_id  = aws_route_table.nat.id
}


####################
### Gateway Config 
resource "aws_internet_gateway" "this" {
    vpc_id  = aws_vpc.this.id
    
    tags = merge(
        {
            Name = format("%s-igw", var.name)
        },
        var.tags
    )
}

resource "aws_eip" "nat" {
    vpc = true
    
    depends_on = [aws_route_table.public]
    
    tags = merge(
        {
            Name = format(
                "%s-nat-eip-%s",
                var.name,
                element(split("", var.public_subnets[0].zone), length(var.public_subnets[0].zone) - 1)
            )
        },
        var.tags
    )
}

resource "aws_nat_gateway" "this" {
    subnet_id  = aws_subnet.public[0].id
    allocation_id = aws_eip.nat.id
    
    tags = merge(
        {
            Name = format(
                "%s-nat-%s",
                var.name,
                element(split("", var.public_subnets[0].zone), length(var.public_subnets[0].zone) - 1)
            )
        },
        var.tags
    )
}


####################
### Routing
resource "aws_route" "public" {
    route_table_id  = aws_route_table.public.id
    destination_cidr_block  = "0.0.0.0/0"
    
    # IGW(Internet Gateway) or VPG(Virtual Private Gateway)
    gateway_id      = aws_internet_gateway.this.id
    
    timeouts {
        create = "5m"
    }
}

resource "aws_route" "nat" {
    route_table_id  = aws_route_table.nat.id
    destination_cidr_block  = "0.0.0.0/0"
    
    # NAT Gateway
    nat_gateway_id      = aws_nat_gateway.this.id
    
    timeouts {
        create = "5m"
    }
}
