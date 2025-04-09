provider "aws" {
  region = var.aws_region
}

// variables.tf
variable "aws_region" {
  default = "us-east-1"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  default = "my-key" // Replace with your actual key pair name
}
