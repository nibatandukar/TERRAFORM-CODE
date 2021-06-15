module "vpc1" {
  source = "./../modules"
  name = var.name
  region = var.region
  key_name = var.key_name
  tag_name = var.tag_name
  cidr_block = var.cidrblock
  private_subnet_cidr_blocks = var.private_subnet_cidr_blocks
  public_subnet_cidr_blocks = var.public_subnet_cidr_blocks
  availability_zones = var.availability_zones
  bastion_ami = var.bastion_ami
  bastion_ebs_optimized = var.bastion_ebs_optimized
  bastion_instance_type = var.bastion_instance_type

  project = var.project
  environment = var.environment
}

resource "aws_security_group_rule" "ssh_ingress" {
  security_group_id = module.vpc1.bastion_security_group_id
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
}
