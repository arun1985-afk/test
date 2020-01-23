provider "aws" {
  region = "us-west-2"
}
resource "aws_instance" "web" {
  ami           = "ami-04590e7389a6e577c"
  instance_type = "t2.micro"

  tags = {
    Name = "tfinstance"
  }
}
resource "aws_vpc" "main" {
  cidr_block = "10.0.1.0/24"
}

