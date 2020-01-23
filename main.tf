provider "aws" {
  region = "us-west-2"
}
resource "aws_instance" "web" {
  ami           = "ami-04590e7389a6e577c"
  instance_type = "t2.micro"
  subnet        = "subnet-00158c49bb7aa8673"

  tags = {
    Name = "tfinstance"
  }
}


