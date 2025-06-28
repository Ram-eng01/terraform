variable "project_name" {
    type = string
}

variable "environment" {
    type = string
    default = "dev"
}

variable "common_tags" {
    type = map 

}

##VPC###
variable "vpc_cidr" {
    type = string
    default = "10.0.0.0/16"
}

variable "enable_dns_hostnames" {
    type = bool
    default = true
}

variable "vpc_tags" {
    type = map 
    default = {}
}


###IGW######
variable "igw_tags" {
    type = map 
    default = {}
}


#### Pubic Subnet ####
variable "public_subnet_cidrs" {
    type = list 
    validation {
      condition = length(var.public_subnet_cidrs)  == 2
      error_message = "please provide 2 valid pubkic subnet CIDR "
    }
    
}

variable "public_subnet_cidrs_tags" {
     type = map 
     default = {}
}


##3 private subnet #####

variable "private_subnet_cidrs" {
    type = list 
    validation {
      condition = length(var.private_subnet_cidrs)  == 2
      error_message = "please provide 2 valid pubkic subnet CIDR "
    }
    
}

variable "private_subnet_cidrs_tags" {
     type = map 
     default = {}
}

### database subnet #######

variable "database_subnet_cidrs" {
    type = list 
    validation {
      condition = length(var.database_subnet_cidrs)  == 2
      error_message = "please provide 2 valid pubkic subnet CIDR "
    }
    
}

variable "database_subnet_cidrs_tags" {
     type = map 
     default = {}
}


### natgateway

variable "natgateway_tags" {
    type = map 
    default = {}
}


####

variable "public_route_tabe_tags" {
    type = map 
    default = {}
}

variable "private_route_tabe_tags" {
    type = map 
    default = {}
}


variable "database_route_tabe_tags" {
    type = map 
    default = {}
}