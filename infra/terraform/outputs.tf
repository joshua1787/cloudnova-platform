# VPC Outputs
output "vpc_id" {
  description = "VPC ID created by VPC module"
  value       = module.vpc.vpc_id
}

output "public_subnet_id_1" {
  description = "Public Subnet 1 ID created by VPC module"
  value       = module.vpc.public_subnet_id_1
}

output "public_subnet_id_2" {
  description = "Public Subnet 2 ID created by VPC module"
  value       = module.vpc.public_subnet_id_2
}

output "private_subnet_id_1" {
  description = "Private Subnet 1 ID created by VPC module"
  value       = module.vpc.private_subnet_id_1
}

output "private_subnet_id_2" {
  description = "Private Subnet 2 ID created by VPC module"
  value       = module.vpc.private_subnet_id_2
}

# Security Group Outputs
output "alb_sg_id" {
  description = "Security Group ID for Application Load Balancer"
  value       = module.security.alb_sg_id
}

output "ecs_sg_id" {
  description = "Security Group ID for ECS service"
  value       = module.security.ecs_sg_id
}

output "rds_sg_id" {
  description = "Security Group ID for RDS cluster"
  value       = module.security.rds_sg_id
}

# ALB Outputs
output "alb_dns_name" {
  description = "DNS Name for Application Load Balancer"
  value       = module.alb.alb_dns_name
}

output "alb_arn" {
  description = "ARN of Application Load Balancer"
  value       = module.alb.alb_arn
}

# Target Group Outputs
output "target_group_arn" {
  description = "ARN of ALB Target Group"
  value       = module.alb.target_group_arn
}

# ECR Outputs
output "ecr_repository_url" {
  description = "URL of ECR Repository"
  value       = module.ecr.ecr_repository_url
}

output "ecr_repository_name" {
  description = "Name of ECR Repository"
  value       = module.ecr.ecr_repository_name
}

# RDS Outputs
output "rds_cluster_id" {
  description = "ID of RDS cluster"
  value       = module.rds.rds_cluster_id
}

output "rds_cluster_endpoint" {
  description = "Endpoint address of RDS cluster"
  value       = module.rds.rds_cluster_endpoint
}

# S3 Outputs
output "s3_bucket_name" {
  description = "Name of S3 Bucket for React frontend"
  value       = module.s3.s3_bucket_name
}

output "s3_bucket_website_endpoint" {
  description = "Website URL for S3 Hosted React App"
  value       = module.s3.s3_bucket_website_endpoint
}
