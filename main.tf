provider "aws" {
    region = "ap-south-1"
    profile = "default"
  
}

resource "aws_instance" "name" {
  ami = "ami-0ac7b260cf76d8865"
  instance_type = "t3.small"

   tags = {
    Name = "my-terra"
  } 
}


terraform {
  backend "s3" {
    bucket = "abc123"
    key = "terraform-jenkins/terraform.tfstate"
    region = "ap-south-1"
  }
}
