resource "aws_instance" "EC2-group" {
  ami           = "ami-07caf09b362be10b8"
  instance_type = "t2.micro"
  key_name = "local"
  count = 3
}
