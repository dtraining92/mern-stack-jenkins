# To provide a cloud provider 
provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "my-first-VPC"{
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "public_subnet"{
  cidr_block         = "10.0.1.0/24" 
  availability_zone  = "us-east-1b"
  vpc_id             = aws_vpc.my-first-VPC.id
} 


resource "aws_instance" "Instance1"{
  ami           = "ami-0866a3c8686eaeeba"
  instance_type = "t2.micro"
  key_name      = "j-keypair"
  tags = {
    Name = "Instancetag"
}

}
