provider "aws" {
    region = var.location
}

resource "aws_instance" {
    ami = var.ami_id
    instance_type = var.instance_type
    tags {
        Name = var.tag
    }
}
