module "server" {
  source = "./modules/create-ec2"
  instance_security_group_ids = [aws_security_group.public_sg.id]
}