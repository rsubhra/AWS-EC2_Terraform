output "aws_instance_public_ip" {
  value = aws_instance.myserver.public_ip
  
}
output "hostid" {
    value = aws_instance.myserver.private_ip
  
}