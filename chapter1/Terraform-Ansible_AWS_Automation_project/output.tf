output "publice_ip_first_server" {
    value = aws_instance.first_server.public_ip
}

output "publice_ip_second_server" {
    value = aws_instance.second_server.public_ip
}

output "publice_ip_third_server" {
    value = aws_instance.Third_server.public_ip
}
