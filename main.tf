module "networking" {
  source                 = "./networking"
  region                 = var.region
  public_subnet_az1_cidr = var.public_subnet_az1_cidr
  vpc_cidr               = var.vpc_cidr
  project_name           = var.project_name
  db_connection_port     = 5432
}

module "rds-db" {
  source               = "./db"
  security_group_id    = module.networking.security_group_id
  db_subnet_group_name = module.networking.db_subnet_group_name
  db_name              = "mydb"
  engine               = "postgres"
  engine_version       = "15.2"
  instance_class       = "db.t3.micro"
  db_username          = "moloko"
  db_password          = var.db_password
  project_name         = var.project_name
  allocated_storage    = 30
  publicly_accessible  = true
}