resource "aws_instance" "app_server" {
  ami           = var.ami_id
  instance_type = var.instance
  count         = var.instance_count
  vpc_security_group_ids = [aws_security_group.network-security-group.id]
  subnet_id = var.subnet_id


  tags = {
    Name = "ProjectServerInstance ${count.index + 1}"
  }
}
# Creating a security group to restrict/allow inbound connectivity
resource "aws_security_group" "network-security-group" {
  name        = var.network-security-group-name
  description = "Allow TLS inbound traffic"
  vpc_id = var.vpc_id

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] 
  }
  # Not recommended to add "0.0.0.0/0" instead we need to be more specific with the IP ranges to allow connectivity from.
  tags = {
    Name = "nsg-inbound"
  }
}

