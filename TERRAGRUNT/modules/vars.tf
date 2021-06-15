variable "name" {
  default     = "Default"
  type        = string
  description = "Name of the VPC"
}

variable "project" {
  type        = string
  description = "Name of project this VPC is meant to house"
}

variable "environment" {
  type        = string
  description = "Name of environment this VPC is targeting"
}

variable "region" {
  default     = "ap-south-1"
  type        = string
  description = "Region of the VPC"
}

variable "key_name" {
  default     = "deployer-key"
  type        = string
  description = "EC2 Key pair name for the bastion"
}

variable "public_key_name" {
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDJDa/Qo0L6dTwgXUzSoFLRW8WBuEVtKJbamqo26j9GsQ9NvR65x1BLgsMfGdaBDG51SK42dgyeBGj0YYhIAmtLDw5PjR1enX2XA4EaYoSrJB5h449HpG3E9MlUlU8f+JWmggNx9yJ7mu0fre69+/dtjbVrqtNWclGeGz9ITrKdGcUy7Ck4OQT9paLF2ut6W1q1/OPCMS6FIeY5A1zQtncw5+utCZ+sbTZVkZ976JdglJKZ1CIDwIy5LrT1sV4J7jxNP36V3/xS3F+dgwIxOG3Yxpl6rAe4WVDSAq8Bq1Tp+HGw4F3NreYBUB9zwPKvBkC7vvueSz6G+CqPcCwLT/nI8Kp0arDW4pYBEb/W6gYRkkmBzMPNGqJO1zNVJ45uojlwGej2diIHdCBqFW6YV+M3WpMxt0KD6yiH3jEmeNP5x0ZT4EqZvus5p4ZSU086oSpQs7oQNGR+8PvHVLY8fCUgA2iv1G7z129eUo/SraWtcqTkegLL+eJZrx7zpMwbK4s= niba@niba-Inspiron-3543"
}

variable "tag_name" {
  default = ""
}

variable "cidr_block" {
  default     = "10.0.0.0/16"
  type        = string
  description = "CIDR block for the VPC"
}

variable "public_subnet_cidr_blocks" {
  default     = ["10.0.0.0/24", "10.0.2.0/24"]
  type        = list
  description = "List of public subnet CIDR blocks"
}

variable "private_subnet_cidr_blocks" {
  default     = ["10.0.1.0/24", "10.0.3.0/24"]
  type        = list
  description = "List of private subnet CIDR blocks"
}

variable "availability_zones" {
  default     = ["ap-south-1a", "ap-south-1b"]
  type        = list
  description = "List of availability zones"
}

variable "bastion_ami" {
  type        = string
  description = "Bastion Amazon Machine Image (AMI) ID"
}

variable "bastion_ebs_optimized" {
  default     = false
  type        = bool
  description = "If true, the bastion instance will be EBS-optimized"
}

variable "bastion_instance_type" {
  default     = "t2.micro"
  type        = string
  description = "Instance type for bastion instance"
}

variable "tags" {
  default     = {}
  type        = map(string)
  description = "Extra tags to attach to the VPC resources"
}


