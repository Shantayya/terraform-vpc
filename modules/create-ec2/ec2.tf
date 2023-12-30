resource "aws_instance" "ec2" {
  ami           = var.ami
  instance_type = var.instance_type
  count         = var.instance_count
  key_name      = "terraform-key"
  tags = {
    Name = "webserver"
  }

}
