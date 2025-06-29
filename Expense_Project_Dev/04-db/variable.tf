variable "project_name" {
  default = "expense"
}

variable "common_tags" {
  default = {
    Project     = "expense"
    Environment = "dev"
    Terraform   = "true"
  }
}


variable "environment" {
  default = "dev"
}