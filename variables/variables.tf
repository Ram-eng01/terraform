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
    #default = "t3.micro"
    type = string
}

variable "tags" {
    default = {
        Project = "Expense"
        Environment = "Dev"
        Module = "DB"

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