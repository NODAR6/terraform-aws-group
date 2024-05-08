resource "aws_db_instance" "db_instance" {
  allocated_storage    = 2
  db_name              = "mydb"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  username             = "nodar"
  password             = "nodar123"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
  count = 2
}