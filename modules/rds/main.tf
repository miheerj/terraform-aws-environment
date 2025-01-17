resource "aws_db_instance" "database" {
  allocated_storage    = var.allocated_storage
  engine               = "mysql"
  engine_version       = var.engine_version
  instance_class       = var.instance_class
  name                 = var.db_name
  username             = var.username
  password             = var.password
  publicly_accessible  = false
  vpc_security_group_ids = var.security_group_ids

  tags = {
    Name = "${var.project_name}-rds"
  }
}

output "rds_endpoint" {
  value = aws_db_instance.database.endpoint
}
