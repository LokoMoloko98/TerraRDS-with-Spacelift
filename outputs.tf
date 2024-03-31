output "completion_time" {
  value = timeadd(timestamp(), "2h")
}

output "aws_db_instance" {
  value = aws_db_instance.rds_db.id
}

output "vpc_id" {
  value = aws_vpc.vpc.id
}

output "public_subnet_az1_id" {
  value = aws_subnet.public_subnet_az1.id
}
