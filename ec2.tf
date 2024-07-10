module "app_infrastructure" {
  source = "./modules"
  ami_id = var.ami_id
  instance_type = var.instance_type
  subnet_id = var.subnet_id
  network_security_group_name = var.network_security_group_name
  vpc_id = var.vpc_id
  ingress_cidr_blocks = ["0.0.0.0/0"]
  tags_instance = {
    Name = "sneha-ec2"
  }
  tags_sg = {
    Name = "nsg-inbound"
  }
}
