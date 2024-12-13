variable "project_name" {
  description = "project name"
  type        = string
}

variable "allocated_storage" {
  type = number
}

variable "db_name" {
  description = "project name"
  type        = string
}

variable "engine" {
  type = string
}

variable "engine_version" {
  type = string
}

variable "instance_class" {
  type = string
}

variable "db_username" {
  type = string
}

variable "db_password" {
  type = string
}

variable "security_group_id" {
  type = string
}

variable "db_subnet_group_name" {
  type = string
}

variable "publicly_accessible" {
  type = bool
}