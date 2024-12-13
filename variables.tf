# environment variables
variable "region" {
  description = "region to create resources"
  type        = string
}

variable "project_name" {
  description = "project name"
  type        = string
}

#VPC variable
variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
}

#public subnet availabilty zone 1 cidr variable
variable "public_subnet_az1_cidr" {
  description = "public subnet availabilty zone one cidr"
  type        = string
}

#public subnet availability zone 2 cidr variable
variable "public_subnet_az2_cidr" {
  description = "public subnet availability zone two cidr"
  type        = string
}

variable "db_password" {
  description = "value for db password"
  type = string
}