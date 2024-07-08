variable "ami_id" {
  type    = string
}

variable "instance" {
  type    = string
  default = "t2.micro"
}

variable "instance_count" {
  type    = number
}

variable "network-security-group-name" {

}

variable "subnet_id" {

}

variable "vpc_id"{
    
}