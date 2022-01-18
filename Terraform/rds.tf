## RDS Instance ##
resource "aws_db_instance" "db" {
  identifier              = "${var.env}-rds"
  instance_class          = var.database_instance_type
  engine                  = var.database_engine_type
  engine_version          = var.database_engine_version
  allocated_storage       = var.database_storage_size
  db_subnet_group_name    = aws_db_subnet_group.db_subnet_group.id
  vpc_security_group_ids  = [module.vpc.sg_database_id]
  backup_retention_period = var.database_backup_retention_period
  username                = "admin"
  password                = "admin123"
  publicly_accessible     = false
  skip_final_snapshot     = true

  ## Life cycle policy to avoid any further update in this template ##
  lifecycle {
    ignore_changes = [
      engine_version,
      password,
      backup_retention_period
    ]
  }

  tags = {
    Name = "${var.env}-rds"
  }
}

resource "aws_db_subnet_group" "db_subnet_group" {
  name       = "${var.env}-db"
  subnet_ids = [module.vpc.database_subnet_ids[0], module.vpc.database_subnet_ids[1]]

  tags = {
    Name = "${var.env}-DB-subnet-group"
  }
}
