resource "aws_db_subnet_group" "database-subnet-group" {
  name         = "task_vpc_sub_group"
  subnet_ids   =  ["${var.pub1_sub}","${var.pub2_sub}","${var.pri1_sub}","${var.pri2_sub}",]
                   
  description  = "Subnets for Database Instance"

  tags   = {
    Name = "task_vpc_subgroup"
  }
}



resource "aws_db_instance" "rds" {
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = "task_vpc_db"
  username             = "admin"
  password             = "adminadmin"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
  vpc_security_group_ids = ["${var.rds-sg}",]
  availability_zone = "us-east-1a"
  db_subnet_group_name    = aws_db_subnet_group.database-subnet-group.name
}