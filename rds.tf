resource "aws_db_instance" "rds_db" {
  allocated_storage      = 30
  db_name                = "mydb"
  engine                 = "mysql"
  engine_version         = "5.7"
  instance_class         = "db.t3.micro"
  username               = "foo"
  password               = "foobarbaz"
  parameter_group_name   = "default.mysql5.7"
  skip_final_snapshot    = true
  vpc_security_group_ids = [aws_security_group.rds_sg.id]
  db_subnet_group_name   = aws_db_subnet_group.db-subnet-group.name
  publicly_accessible    = true

  tags = {
    Name = "${var.project_name}-rds-db"
  }
}