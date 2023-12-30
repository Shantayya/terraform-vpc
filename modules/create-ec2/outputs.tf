output "ec2_ip"{
    value = aws_instance.ec2[*].public_ip
}

output "public_sg" {
    value = aws_security_group.public_sg.id
}
