provider "aws" {
    region = "us-east-1"
  
}
resource "aws_vpc" "vpcname" {
    cidr_block = "10.1.0.0/16"
    tags = {
      name = "vpcname"
    }
}

resource "aws_subnet" "public_subnet" {
    vpc_id = aws_vpc.vpcname.id
    availability_zone = "us-east-1a"
    cidr_block = "10.1.0.0/24"
    tags = {
      Name = "public-subnet"
    }
}

resource "aws_subnet" "private_subnet" {
    vpc_id = aws_vpc.vpcname.id
    availability_zone = "us-east-1b"
    cidr_block = "10.1.1.0/24"
    tags = {
      Name = "private-subnet"
    }
}
resource "aws_internet_gateway" "igw1" {
    vpc_id = aws_vpc.vpcname.id
    tags = {
      Name = "igw1"
    }
  
}

resource "aws_route_table" "rt1" {
    vpc_id = aws_vpc.vpcname.id
    tags = {
      Name = "rt1"
    }
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw1.id
  }
}


output "subnet_id" {
    value = aws_subnet.public_subnet.id
  
}
