resource "aws_db_instance" "rds_db" {
  allocated_storage      = var.allocated_storage
  db_name                = var.db_name
  engine                 = var.engine
  engine_version         = var.engine_version
  instance_class         = var.instance_class
  username               = var.db_username
  password               = var.db_password
  parameter_group_name   = aws_db_parameter_group.postgres16.name
  skip_final_snapshot    = true
  vpc_security_group_ids = [var.security_group_id]
  db_subnet_group_name   = var.db_subnet_group_name
  publicly_accessible    = var.publicly_accessible

  tags = {
    Name = "${var.project_name}-rds-db"
  }
}

resource "aws_db_parameter_group" "postgres16" {
  name   = "postgres16"
  family = "postgres16"

  parameter {
    name  = "log_connections"
    value = "1"
  }
}


