resource "aws_subnet" "public_01" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = var.public_subnet
  tags = {
    Name                     = "public_subnet_01"
  }
}

resource "aws_subnet" "private_01" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = var.private_subnet
  tags = {
    Name                              = "private_subnet_01"
  }
}
