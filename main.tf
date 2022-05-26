provider "aws" {
    access_key = "${var.aws_access_key}"
    secret_key = "${var.aws_secret_key}"
    region = "${var.aws_region}"
}

terraform {
  backend "s3" {
    bucket = "terraformb17state"
    key    = "devopsb1.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform-up-and-running-locks"
  }
}