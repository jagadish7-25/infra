output "instance_id" {
  value = aws_instance.Docker.id
}

output "public_ip" {
  value = aws_instance.Docker.public_ip
}

output "private_ip" {
  value = aws_instance.Docker.private_ip
}