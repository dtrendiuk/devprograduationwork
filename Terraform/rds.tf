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
  password                = random_password.db_master_pass.result
  publicly_accessible     = false
  skip_final_snapshot     = true

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

resource "random_password" "db_master_pass" {
  length           = 20
  special          = true
  min_special      = 5
  override_special = "!#$%^&*()-_=+[]{}<>:?"
  keepers = {
    pass_version = 1
  }
}

resource "aws_secretsmanager_secret" "db-pass" {
  name = "db-pass-dev-pro-test"
}

resource "aws_secretsmanager_secret_version" "db-pass-val" {
  secret_id     = aws_secretsmanager_secret.db-pass.id
  secret_string = random_password.db_master_pass.result
}
