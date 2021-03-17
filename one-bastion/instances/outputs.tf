output "bastion_id" {
    value = aws_instance.bastion.id
}

output "bastion_eip" {
    value = aws_eip.bastion.public_ip
}
