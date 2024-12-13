# environment variables
variable "region" {
  description = "region to create resources"
  type        = string
  #default     = "us-east-1"
}

variable "project_name" {
  description = "project name"
  type        = string
  #default     = "TerraRDS"
}

#VPC variable
variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
  #default     = "10.0.0.0/16"
}

#public subnet availabilty zone 1 cidr variable
variable "public_subnet_az1_cidr" {
  description = "public subnet availabilty zone one cidr"
  type        = string
  #default     = "10.0.8.0/24"
}

variable "db_password" {
  description = "value for db password"
  type = string
}