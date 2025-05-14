output "instance_ip" {
  description = "Public IP da instância EC2"
  value       = aws_instance.devops_server.public_ip
}
