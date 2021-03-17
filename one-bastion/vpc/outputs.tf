output "vpc_id" {
    value = aws_vpc.this.id
}

output "public_subnet_ids" {
    value = aws_subnet.public.*.id
}

output "private_nat_subnet_ids" {
    value = aws_subnet.nat.*.id
}

output "private_subnet_ids" {
    value = aws_subnet.private.*.id
}

output "nat_eip" {
    value = aws_eip.nat.public_ip
}
