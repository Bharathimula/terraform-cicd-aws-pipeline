resource "aws_instance" "jenkins_server" {
  ami           = "ami-0967e5535761d839e" # Ubuntu 20.04 LTS for us-east-1
  instance_type = var.instance_type
  key_name      = var.key_name

  security_groups = [aws_security_group.jenkins_sg.name]

  tags = {
    Name = "jenkins-server"
  }

  user_data = file("../jenkins/install_jenkins.sh")
}

resource "aws_security_group" "jenkins_sg" {
  name_prefix = "jenkins-sg"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 8081
    to_port     = 8081
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

