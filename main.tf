provider "aws" {
  region = "us-west-2"
}
resource "aws_instance" "web" {
  ami           = "ami-04590e7389a6e577c"
  instance_type = "t2.small"
 
  tags = {
    Name = "tfinstance"
  }
}


