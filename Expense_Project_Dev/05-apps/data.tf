data "aws_ssm_parameter" "backend_sg_id" {
  name = "/${var.project_name}/${var.environment}/backend_sg_id"
}


data "aws_ssm_parameter" "private_subnet_ids" {
  name = "/${var.project_name}/${var.environment}/private_subnet_ids"
}

data "aws_ssm_parameter" "frontend_subnet_ids" {
  name = "/${var.project_name}/${var.environment}/frontend_subnet_ids"
}


data "aws_ssm_parameter" "public_subnet_ids" {
  name = "/${var.project_name}/${var.environment}/public_subnet_ids"
}



data "aws_ami" "ami_info" {
    most_recent = true
    owners = [ "973714476881" ]
   # filter {
   #   name = "name"
   #   values = ["Devops-practice"]
   # }
    filter {
      name = "root-device-type"
      values = ["ebs"]
    }
    filter {
      name = "virtualization-type"
      values = [ "hvm" ]
    }
}

