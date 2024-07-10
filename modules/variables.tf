variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "The instance type for the EC2 instance"
  type        = string
}

variable "subnet_id" {
  description = "The subnet ID for the EC2 instance"
  type        = string
}

variable "network_security_group_name" {
  description = "The name of the network security group"
  type        = string
}

variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

variable "ingress_cidr_blocks" {
  description = "The list of CIDR blocks to allow for ingress"
  type        = list(string)
}

variable "tags_instance" {
  description = "Tags for the EC2 instance"
  type        = map(string)
}

variable "tags_sg" {
  description = "Tags for the security group"
  type        = map(string)
}
