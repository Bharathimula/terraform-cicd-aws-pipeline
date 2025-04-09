variable "aws_region" {
  description = "AWS region to deploy resources"
  default     = "us-east-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "key_name" {
  description = "AWS EC2 Key Pair name for SSH access"
  default     = "my-key"  # Replace with your actual key pair name
}
