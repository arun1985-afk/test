provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "web" {
  ami           = "ami-03d87256af0650d55"
  instance_type = "t2.micro"
  subnet_id     = "subnet-00158c49bb7aa8673"
 
  tags = {
    Name = "tfinstance"
  }
}


