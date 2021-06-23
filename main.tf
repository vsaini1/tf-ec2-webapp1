provider "aws" {
  region     = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}


resource "aws_key_pair" "key" {
  key_name   = var.aws_key_name
  public_key = file("${var.aws_key_file}")
}
resource "aws_instance" "web" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = aws_key_pair.key.key_name
  vpc_security_group_ids = ["${aws_security_group.websg.id}"]
  user_data              = file("${var.user_data_file}")
  tags                   = { Name = "${var.ec2_name}" }
}
resource "aws_security_group" "websg" {
  name        = var.sg_name
  description = "Allow ssh  inbound traffic"

  ingress {
    from_port   = var.ingress_port1
    to_port     = var.ingress_port1
    protocol    = var.ingress_proto1
    cidr_blocks = ["${var.cidr_blocks}"]
  }

  ingress {
    from_port   = var.ingress_port2
    to_port     = var.ingress_port2
    protocol    = var.ingress_proto2
    cidr_blocks = ["${var.cidr_blocks}"]
    #cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["${var.cidr_blocks}"]
    #cidr_blocks     = ["0.0.0.0/0"]

  }
}
