#1. command line ---> terraform plan -var="instancetype=t4.xlarge"
#2. tfvars
#3. ENV variable ---> export TF_VAR_instancetype=t3.micro
#4. variable default values



variable "image_id" {
    type = string  
    default = "ami-090252cbe067a9e58"
    description = "RHE-9 AMI ID"

}


variable "instancetype" {
    default = "t3.micro"
    type = string
}

variable "common_tags" {
    default = {
        Project = "Expense"
        Environment = "Dev"
        Terraform = "true"

    }
}

variable "sg_name" {
    default = "allowing_SSH"
}

variable "sg_description" {
    default = "allowing port 22"
}

variable "ssh_port" {
    default = 22
}

variable "protocol" {
    default = "tcp"
}

variable "allowed_cidr" {
    #type = list
    default = ["0.0.0.0/0"]
} 

variable "instance_name" {
    type = list 
    default = ["db","backend","frontend"]
}


#r53 Variabes
variable "zone_id" {
    default = "56d cr83rc y3 c92"
}

variable "domain_name" {
    default = "awsmohan.online"
}