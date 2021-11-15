# Designate a cloud provider, region, and credentials
provider "aws" {
  access_key = ""
  secret_key = ""
  region = "us-east-1"
}

# Provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "udacity-t2" {
  subnet_id = "subnet-038a6a6158e4259eb"
  ami = "ami-0323c3dd2da7fb37d"
  instance_type = "t2.micro"
  count = 4
  tags = {
    Name = "Udacity T2"
  }
}

# Provision 2 m4.large EC2 instances named Udacity M4
resource "aws_instance" "udacity-m4" {
  subnet_id = "subnet-038a6a6158e4259eb"
  ami = "ami-0323c3dd2da7fb37d"
  instance_type = "m4.large"
  count = 2
  tags = {
    Name = "Udacity M4"
  }
}