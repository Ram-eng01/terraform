variable "image_id" {
    type = string  
    default = "ami-090252cbe067a9e58"
    description = "RHE-9 AMI ID"

}


variable "instancetype" {
    default = "t3.micro"
    type = string
}

variable "instance_name" {
    default = "back"
}