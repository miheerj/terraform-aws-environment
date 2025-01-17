provider "aws" {
  region = var.region
}

module "vpc" {
  source         = "../../modules/vpc"
  project_name   = var.project_name
  cidr_block     = var.cidr_block
  public_subnet_cidrs = var.public_subnet_cidrs
}

module "ec2" {
  source         = "../../modules/ec2"
  project_name   = var.project_name
  ami_id         = var.ami_id
  instance_type  = var.instance_type
  subnet_id      = module.vpc.public_subnet_ids[0]
}

module "rds" {
  source              = "../../modules/rds"
  project_name        = var.project_name
  allocated_storage   = var.allocated_storage
  engine_version      = var.engine_version
  db_name             = var.db_name
  username            = var.username
  password            = var.password
  security_group_ids  = [module.vpc.default_security_group_id]
}

module "s3" {
  source         = "../../modules/s3"
  project_name   = var.project_name
}
