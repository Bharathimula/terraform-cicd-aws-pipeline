provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "my_instance" {
  ami           = "ami-0abcdef1234567890"
  instance_type = var.instance_type
  key_name      = var.key_name
}
