variable "project_name" {
  default = "expense"
}

variable "environment" {
  default = "dev"
}


variable "db_sg_description" {
  default = "SG for DB MySql Instance"
}


variable "common_tags" {
  default = {
    Project     = "expense"
    Environment = "dev"
    Terraform   = "true"
  }
}

