output "completion_time" {
  value = timeadd(timestamp(), "2h")
}

output "aws_db_instance" {
  value = aws_db_instance.rds_db.id
}
