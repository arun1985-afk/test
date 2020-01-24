provider "aws" {
  region = "us-west-2"
}

data "aws_vpc" "default" {
  default = true
}

data "aws_subnet_ids" "all" {
  vpc_id = "vpc-0f889ec8acff2d9d0"
}
resource "aws_instance" "web" {
  ami           = "ami-03d87256af0650d55"
  instance_type = "t2.small"
  subnet_id     = "subnet-00158c49bb7aa8673"
  vpc_security_group_ids = ["sg-0838b201c63605c88"]
  associate_public_ip_address = true
 
  tags = {
    Name = "tfinstance"
  }
}


