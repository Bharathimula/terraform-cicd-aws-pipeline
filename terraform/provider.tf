provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "my_instance" {
  ami           = "ami-0967e5535761d839e"
  instance_type = var.instance_type
  key_name      = var.key_name
}