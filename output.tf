output "instancias_ec2_docker" {
  value = aws_instance.narayana_ec2.*.public_ip
}
output "instancias_ec2_private" {
  value = aws_instance.narayana_ec2.*.private_ip
}

output "instancias_ec2_ansible" {
  value = aws_instance.narayana_ec2_ansible.*.public_ip
}
