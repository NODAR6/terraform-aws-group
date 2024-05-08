provider "aws" {
  region = "us-west-2"
}

resource "aws_launch_template" "template" {
  name_prefix     = "test"
  image_id        = "ami-1a2b3c"
  instance_type   = "t2.micro"
  security_groups = ["sg-12345678"]
}

resource "aws_autoscaling_group" "autoscale" {
  name                  = "test-autoscaling-group"  
  availability_zones    = ["us-west-2"]
  desired_capacity      = 3
  max_size              = 6
  min_size              = 3
  health_check_type     = "EC2"
  termination_policies  = ["OldestInstance"]
  vpc_zone_identifier   = ["subnet-12345678"]

  launch_template {
    id      = aws_launch_template.template.id
    version = "$Latest"
  }
}