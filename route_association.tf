resource "aws_route_table_association" "public_route_association" {
  subnet_id      = aws_subnet.public_01.id
  route_table_id = aws_route_table.public_rt.id
}

resource "aws_route_table_association" "private_route_association" {
  subnet_id      = aws_subnet.private_01.id
  route_table_id = aws_route_table.private_rt.id
}
