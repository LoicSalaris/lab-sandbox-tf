output "instance_app_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.app.id
}

output "instance_app_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.app.public_ip
}

output "instance_pgsql_private_ip" {
  description = "Private IP address of the EC2 instance"
  value       = aws_instance.pgsql.private_ip
}

output "web-address" {
  value = "${aws_instance.app.public_dns}:8080"
}

output "ssh-app" {
  value = "ssh -i ~/.ssh/${var.key_name_app}.pem ubuntu@${aws_instance.app.public_dns}"
}

output "ssh-app-jump-to-pgsql" {
  value = "ssh -i ~/.ssh/${var.key_name_app}.pem -J ubuntu@${aws_instance.app.public_dns} ubuntu@${aws_instance.pgsql.private_ip}"
}