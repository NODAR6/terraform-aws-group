resource "aws_instance" "EC2-group" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name = "local"
  count = 3
}
