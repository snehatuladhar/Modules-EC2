variable "ami_id" {
  type    = string
}

variable "instance" {
  type    = string
  default = "t2.micro"
}


variable "network-security-group-name" {
  description = "The name of the network security group."
  type        = string
}

variable "subnet_id" {
  description = "The subnet ID to launch the instance in."
  type        = string
}

variable "vpc_id"{
  description = "The VPC ID to launch the instance in."
  type        = string   
}