module "vpc" {
  source = "../aws-vpc"
  project_name = var.project_name
  common_tags = var.common_tags
  public_subnet_cidrs = var.public_subnet_cidrs

}