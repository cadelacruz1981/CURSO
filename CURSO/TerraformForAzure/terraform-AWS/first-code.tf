terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.24.0"
    }
  }
}

provider "aws" {
  # Configuration options
    region = "us-east-1"
    #version = "~> 4.24.0"
    access_key = ""
    secret_key = ""
}
resource "aws_s3_bucket" "tf_course" {
  bucket = "prueba-01"
  #acl = "private"
}
terraform {
    backend "s3" {
        bucket = "example-bucket"
        key    = "terraform-test.tfstate"
        region = "eu-west-1"
    }
}
