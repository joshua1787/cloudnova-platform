resource "aws_db_subnet_group" "this" {
  name       = "${var.project_name}-db-subnet-group"
  subnet_ids = var.private_subnet_ids

  tags = {
    Name = "${var.project_name}-db-subnet-group"
  }
}

resource "aws_rds_cluster" "this" {
  cluster_identifier      = "${var.project_name}-rds-cluster"
  engine                  = "aurora-mysql"
  engine_version          = "5.7.mysql_aurora.2.11.2"
  master_username         = var.master_username
  master_password         = var.master_password
  database_name           = var.database_name
  db_subnet_group_name    = aws_db_subnet_group.this.name
  vpc_security_group_ids  = [var.rds_sg_id]
  storage_encrypted       = true
  backup_retention_period = 1
  preferred_backup_window = "07:00-09:00"
  skip_final_snapshot     = true
}

  
