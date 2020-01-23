provider "aws" {
  region = "us-west-2"
}
resource "aws_instance" "web" {
  ami           = "ami-04590e7389a6e577c"
  instance_type = "t2.medium"
  subnet_id     = "subnet-01c6a1c7298d181ed"
 
  tags = {
    Name = "tfinstance"
  }
}


