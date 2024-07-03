module "ec2" {
  source                      = "./ec2"
  ami           = var.ami_id
  instance_type = var.instance
  vpc_security_group_ids = [aws_security_group.network-security-group.id]
  subnet_id = var.subnet_id
}