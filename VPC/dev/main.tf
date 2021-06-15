module "vpc" {
  source = "./../modules"
  name = "Default"
  region = "ap-south-1"
  key_name = "dev-deployer-key"
  tag_name = "dev-key"
  cidr_block = "10.0.0.0/16"
  private_subnet_cidr_blocks = ["10.0.1.0/24", "10.0.3.0/24"]
  public_subnet_cidr_blocks = ["10.0.0.0/24", "10.0.2.0/24"]
  availability_zones = ["ap-south-1a", "ap-south-1b"]
  bastion_ami = "ami-0860c9429baba6ad2"
  bastion_ebs_optimized = true
  bastion_instance_type = "t3.micro"

  project = "Something"
  environment = "Staging"
}

resource "aws_security_group_rule" "ssh_ingress" {
  security_group_id = module.vpc.bastion_security_group_id
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
}

