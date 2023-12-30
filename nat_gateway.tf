resource "aws_eip" "eip" {
  tags = {
    name = "eip"
  }
}

resource "aws_nat_gateway" "nat_gw" {
  allocation_id = aws_eip.eip.id
  subnet_id     = aws_subnet.public_01.id
  tags = {
    name = "nat_gw"
  }
  depends_on = [aws_internet_gateway.igw]
}
