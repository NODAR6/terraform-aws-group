provider "aws" {
  region = "us-west-2"
}



resource "aws_autoscaling_group" "autoscale" {
  name                  = "test-autoscaling-group"  
  availability_zones    = ["us-west-2"]
  desired_capacity      = 3
  max_size              = 6
  min_size              = 3
  health_check_type     = "EC2"
  # termination_policies  = ["OldestInstance"]
  # vpc_zone_identifier   = ["subnet-12345678"]
  key_name= "local"
  instance_type = "t2.micro"

  
}
