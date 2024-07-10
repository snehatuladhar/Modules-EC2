resource "aws_security_group" "network_security_group" {
  name        = var.network_security_group_name
  description = "Allow TLS inbound traffic"
  vpc_id      = var.vpc_id

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.ingress_cidr_blocks
  }

  tags = var.tags_sg
}

resource "aws_instance" "app_server" {
  ami           = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.network_security_group.id]
  subnet_id     = var.subnet_id

  tags = var.tags_instance
}
