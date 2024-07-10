variable "region" {
  description = "The AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

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
