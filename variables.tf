
variable "region" {
    type = "string"
    default = "ap-south-1"
}

variable "access_key" {
    type = "string"
    default = ""
}

variable "secret_key" {
    type = "string"
    default = ""
}

variable "environment" {
    type = "string"
    default = "QA"
}

variable "vpc" {
    type = "map"
    default = {
        name = "qa.example.com"
        cidr = "10.1.0.0/16"
    }
}

variable "public_subnets" {
    type = "list"
    default = [
        {
            name = "public-subnet-ap-south-1a"
            cidr = "10.1.1.0/24"
        },
        {
            name = "public-subnet-ap-south-1b"
            cidr = "10.1.2.0/24"
        }
    ]
}

variable "private_subnets" {
    type = "list"
    default = [
        {
            name = "private-subnet-ap-south-1a"
            cidr = "10.1.100.0/24"
        },
        {
            name = "private-subnet-ap-south-1b"
            cidr = "10.1.101.0/24"
        }
    ]
}
