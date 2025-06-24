variable "instance_name" {
  type = map(any)
  default = {
    db       = "t3.small"
    backend  = "t3.medium"
    frontend = "t4.arge"
  }
}

variable "image_id" {
  type        = string
  default     = "ami-090252cbe067a9e58"
  description = "RHE-9 AMI ID"

}

variable "common_tags" {
  type = map(any)
  default = {
    Project   = "expense"
    Terraform = "true"

  }
}

variable "domain_name" {
  default = "awsmohan.online"


}

variable "zone_id" {
  default = "56d cr83rc y3 c92"
}