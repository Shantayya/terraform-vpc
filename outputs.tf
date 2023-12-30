output "public_sg_id" {
  value = aws_security_group.public_sg.id
}

output "vpc_id" {
  value = aws_vpc.my_vpc.id
}

output "ec2-ip" {
  value = module.server.ec2_ip
}

output "public_subnet_id" {
  value = aws_subnet.public_01.id
}

output "private_subnet_id" {
  value = aws_subnet.private_01.id
}
