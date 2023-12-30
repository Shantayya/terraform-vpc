resource "aws_instance" "ec2" {
  ami           = var.ami
  instance_type = var.instance_type
  count         = var.instance_count
  key_name      = "terraform-key"
  security_groups = var.instance_security_group_ids
  tags = {
    Name = "webserver"
  }

}
