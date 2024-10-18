provider "aws" {
  region = "us-east-1"
}
terraform {
  backend "s3" {
    bucket = "bucket-hisosisshbsh123"
    key    = "statef/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}
