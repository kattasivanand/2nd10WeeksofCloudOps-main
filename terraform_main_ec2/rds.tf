resource "aws_db_subnet_group" "sub-grp" {
  name       = "main-rds-subgrp"
  subnet_ids = [aws_subnet.public-subnet1.id, aws_subnet.public-subnet2.id]

  tags = {
    Name = "My DB subnet group"
  }
}

resource "aws_db_instance" "rds" {
  identifier              = "book-rds"
  allocated_storage       = 20
  db_subnet_group_name    = aws_db_subnet_group.sub-grp.name
  engine                  = "mysql"
  engine_version          = "8.0"
  instance_class          = "db.t3.micro"
  multi_az                = true
  db_name                 = "mydb"
  username                = "admin"
  password                = "srivardhan"
  skip_final_snapshot     = true
  vpc_security_group_ids  = [aws_security_group.security-group.id]
  publicly_accessible     = true
  backup_retention_period = 7

  depends_on = [aws_db_subnet_group.sub-grp]

  tags = {
    DB_identifier = "book-rds"
  }
}

