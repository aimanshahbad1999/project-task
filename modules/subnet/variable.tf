variable "public_subnet1_cidr" {
  type    = string
  default = "12.0.1.0/24"
}

variable "public_subnet1_name" {
  type    = string
  default = "pub1-task-vpc"
}

variable "public_subnet1_az" {
  type    = string
  default = "us-east-1a"
}





variable "public_subnet2_cidr" {
  type    = string
  default = "12.0.2.0/24"
}

variable "public_subnet2_name" {
  type    = string
  default = "pub2-task-vpc"
}

variable "public_subnet2_az" {
  type    = string
  default = "us-east-1b"
}






variable "private_subnet1_cidr" {
  type    = string
  default = "12.0.3.0/24"
}

variable "private_subnet1_name" {
  type    = string
  default = "pri1-task-vpc"
}

variable "private_subnet1_az" {
  type    = string
  default = "us-east-1a"
}





variable "private_subnet2_cidr" {
  type    = string
  default = "12.0.4.0/24"
}

variable "private_subnet2_name" {
  type    = string
  default = "pri2-task-vpc"
}

variable "private_subnet2_az" {
  type    = string
  default = "us-east-1b"
}

variable "vpc_id" {
 
}
