provider "aws" {
    region = "us-east-1"
  
}

resource "aws_instance" "instance1" {
    ami = "ami-0866a3c8686eaeeba"
    subnet_id = var.subnet_id
    instance_type = "t2.micro"
    tags = {
      Name = "InstanceName"
    }
  
}

variable "subnet_id" {
    type = string
  
}
