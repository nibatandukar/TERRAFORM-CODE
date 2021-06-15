variable "name" {
   default = "VPC1"
}

variable "region" {
   default = "ap-south-1"
}

variable "key_name" {
   default = "prod-deployer-key"
}

variable "tag_name" {
   default = "prod-key"
}

variable "cidrblock" {
   default = "192.168.0.0/16"
}
variable "private_subnet_cidr_blocks" {
   default = ["192.168.0.0/24", "192.168.1.0/24"]
}
variable "public_subnet_cidr_blocks" {
   default = ["192.168.2.0/24", "192.168.3.0/24"]
}
variable "availability_zones" {
   default = ["ap-south-1a", "ap-south-1b"]
}
variable "bastion_ami" {
   default = "ami-0860c9429baba6ad2"
}
variable "bastion_ebs_optimized" {
   default = "true"
}
variable "bastion_instance_type" {
   default = "t3.micro"
}
variable "project"{
   default = "VPC1"
}
variable "environment"{
   default  = "Staging"
}

