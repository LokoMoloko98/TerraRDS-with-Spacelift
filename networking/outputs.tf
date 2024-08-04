output "security_group_id" {
  value = aws_security_group.rds_sg.id
}

output "vpc_id" {
  value = aws_vpc.vpc.id
}

output "db_subnet_group_name" {
  value = aws_db_subnet_group.db-subnet-group.name
}