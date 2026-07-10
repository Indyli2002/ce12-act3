provider "aws" {
  region = "ap-southeast-1"
}

terraform {
  backend "s3" {
    bucket = "sctp-ce12-tfstate-bucket"
    key    = "indy-bucket-1234567890.tfstate"
    region = "ap-southeast-1"
  }
}

resource "aws_s3_bucket" "name" {
  bucket = "indy-bucket-1234567890"
}