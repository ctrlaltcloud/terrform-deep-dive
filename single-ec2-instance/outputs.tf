output "public_ip" {
    description = "The public ip of the EC2 instance."
    value = aws_instance.example.public_ip
}