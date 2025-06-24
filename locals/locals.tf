locals {
  ami_id = "ami-090252cbe067a9e58"
  sg_id = "sg-tweyyrouihrjo" #replace your sg group id
  instance_type = var.instance_name == "db" ? "t2.micro" : "t3.micro"

  tags = {
    Name = "locals"
  }
}