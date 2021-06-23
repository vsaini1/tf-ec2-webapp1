variable "aws_region" {
  default = "us-west-2"
}
variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "aws_key_file" {}
variable "aws_key_name" {}
variable "ami" {}
variable "instance_type" {
  default = "t2.micro"
}
variable "user_data_file" {}
variable "ec2_name" {}
variable "sg_name" {}
variable "cidr_blocks" {}
variable "ingress_port1" {}
variable "ingress_port2" {}
variable "ingress_proto1" {}
variable "ingress_proto2" {}
