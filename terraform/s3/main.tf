provider "aws" {
    region = "us-east-1"
}

resource "aws_s3_bucket" "buckets_name"{
    bucket = "bucket-name"
}
  
terraform {
    backend "s3" {
        bucket = "bucket-name-bucketname"
        key = "dev/s3/terraform.tfstate"
        region = "us-east-1"
    }
}
