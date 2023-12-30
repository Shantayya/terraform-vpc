resource "aws_security_group" "private_sg" {
  name        = "private_sg"
  description = "this sg is for ec2"
  dynamic "ingress" {
    for_each = var.inbound_ports
    content {
      description      = "allow traffic on ${ingress.value}"
      from_port        = ingress.value
      to_port          = ingress.value
      protocol         = "tcp"
      cidr_blocks      = [var.vpc_cidr]
    }
  }
  egress {
    description      = "allow all outgoing traffic"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }


}


resource "aws_security_group" "public_sg" {
  name        = "public_sg"
  description = "this sg is for public subnet"
  dynamic "ingress" {
    for_each = var.inbound_ports
    content {
      description      = "allow traffic on ${ingress.value}"
      from_port        = ingress.value
      to_port          = ingress.value
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
    }

  }
  egress {
    description      = "allow all outgoing traffic"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }


}