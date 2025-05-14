terraform {
    required_providers {
    aws = {
        source  = "hashicorp/aws"
        version = "~> 4.16"
        }
    }

    required_version = ">= 1.2.0"
}

provider "aws" {
    region  = var.region
}

resource "aws_security_group" "devops_sg" {
  name        = "devops_sg"
  description = "Permitir SSH e HTTP"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
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

resource "aws_instance" "devops_server" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  security_groups = [aws_security_group.devops_sg.name]


  tags = {
    Name = "DevOpsChallenge"
  }

#   provisioner "remote-exec" {
#     inline = ["sudo apt update -y"]

#     connection {
#       type        = "ssh"
#       user        = "ubuntu"
#       private_key = file(var.private_key_path)
#       host        = self.public_ip
#     }
#   }
}
