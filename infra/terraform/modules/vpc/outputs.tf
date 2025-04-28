output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.this.id
}

output "public_subnet_id_1" {
  description = "Public Subnet 1 ID"
  value       = aws_subnet.public_subnet_1.id
}

output "public_subnet_id_2" {
  description = "Public Subnet 2 ID"
  value       = aws_subnet.public_subnet_2.id
}

output "private_subnet_id_1" {
  description = "Private Subnet 1 ID"
  value       = aws_subnet.private_subnet_1.id
}

output "private_subnet_id_2" {
  description = "Private Subnet 2 ID"
  value       = aws_subnet.private_subnet_2.id
}
