resource "aws_db_instance" "ABI-mysql-db" {
  allocated_storage    = 20
  storage_type         = "gp3" 
  db_name              = "mydb"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  username             = "Admin"
  password             = "pass12ABI"
  skip_final_snapshot  = true
  publicly_accessible = false
  #db_subnet_group_name = aws_db_subnet_group.mydb-sngrp.name
  vpc_security_group_ids = [aws_security_group.sg-mysql.id]
  multi_az = false
 
  
}