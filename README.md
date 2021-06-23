# tf-ec2-webapp1

1.) Create terraform.tfvars as below as per requirement.

2.) terraform init (To initiate provider plugins)

3.) terraform fmt  (To formate *.tf files)

4.) terraform validate (To validate syntax of files)

5.) terraform plan (To run plan to verify changes as per requirment)

6.) terraform apply -auto-approve (To make Declarative changes in infra)  
Go to EC2 public IP on browser to verify app web page loading

7.) terraform destroy (To remove all resources created)

Example terraform.tfvars file:

aws_region     = "us-east-1"

aws_access_key = "AKIAVHFXPBNTXJHJ3F53"

aws_secret_key = "2Z5IBy2s/LGPGJRzarzIrXdC6vM+EsghNd9Q2eCA"

aws_key_file   = "new0621key1.pub"

aws_key_name   = "mydemo-key"

ami            = "ami-0aeeebd8d2ab47354"

instance_type  = "t2.micro"

user_data_file = "app-install-script.sh"

ec2_name       = "web-server1"

sg_name        = "web-sg1"

cidr_blocks    = "0.0.0.0/0"

ingress_port1  = "22"

ingress_port2  = "80"

ingress_proto1 = "tcp"

ingress_proto2 = "tcp"

