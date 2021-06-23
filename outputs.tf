output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.web.id
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.web.public_ip
}

output "_instructions" {
  value = "This output contains plain text. You can add variables too."
}

output "public_dns" {
  value = "${aws_instance.web.public_ip.fqdn}"
}

output "App_Server_URL" {
  value = "http://${aws_instance.web.public_ip..fqdn}"
}


