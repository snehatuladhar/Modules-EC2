module "ec2" {
  source                      = "./ec2"
  instance_count              = 1
  ami_id                      = "ami-0cff7528ff583bf9a"
  subnet_id                   = "subnet-0639d260294d92a5d"
  network-security-group-name = "securitygroup-sneha"
  vpc_id ="vpc-03d964f7cd3fa2c74"
}