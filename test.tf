resource "aws_launch_configuration" "example" {
  name_prefix   = "nodar-"
  image_id      = var.ami
  instance_type = var.instance_type
}

resource "aws_autoscaling_group" "instance" {
  name                  = "nodar"  
  availability_zones    = ["us-east-1"]
  desired_capacity      = 3
  max_size              = 6
  min_size              = 3
  health_check_type     = "EC2"

  launch_configuration = aws_launch_configuration.example.id
  

}
