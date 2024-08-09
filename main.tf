module "roboshop" {
  # source = "../terraform-aws-vpc" # Module from local machine
  source = "git::https://github.com/DevOps-Rajanikanth/terraform-aws-vpc.git" # Module from github 
  project_name = var.project_name
  environment = var.environment
  common_tags = var.common_tags
  vpc_tags = var.vpc_tags

  # public subnet
  public_subnets_cidr = var.public_subnets_cidr

  # private subnet
  private_subnets_cidr = var.private_subnets_cidr

 # database subnet
 database_subnets_cidr = var.database_subnets_cidr
}