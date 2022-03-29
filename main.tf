terraform {
   required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.6.0"
    }
  }
}

provider "aws" {
  profile = "default"  
  region  = "us-east-1"
}

variable "instance_type" {
     type = string
}

/* Creates an AWS Instance */
resource "aws_instance" "cert_server" {
  ami           = "ami-0c02fb55956c7d316"
  instance_type = var.instance_type
  
}

output "public_ip" {
    value = aws_instance.cert_server.public_ip
}