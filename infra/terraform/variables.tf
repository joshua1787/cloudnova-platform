# AWS General
variable "aws_region" {
  default = "ap-south-1"
}

variable "project_name" {
  default = "cloudnova"
}

# VPC Networking
variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "public_subnet_cidr_1" {
  default = "10.0.1.0/24"
}

variable "public_subnet_cidr_2" {
  default = "10.0.2.0/24"
}

variable "private_subnet_cidr_1" {
  default = "10.0.3.0/24"
}

variable "private_subnet_cidr_2" {
  default = "10.0.4.0/24"
}

variable "availability_zone_1" {
  default = "ap-south-1a"
}

variable "availability_zone_2" {
  default = "ap-south-1b"
}

# ECS (Container App) Configuration
variable "task_cpu" {
  default = "512"
}

variable "task_memory" {
  default = "1024"
}

variable "container_name" {
  default = "cloudnova-app"
}

variable "container_image" {
  default = "YOUR_ECR_REPO_URL:latest"
}

variable "container_cpu" {
  default = 256
}

variable "container_memory" {
  default = 512
}

variable "container_port" {
  default = 8080
}

variable "desired_count" {
  default = 1
}

# RDS (Database)
variable "database_name" {
  default = "cloudnovadb"
}

variable "master_username" {
  default = "admin"
}

variable "master_password" {
  default = "CloudNova123!"
}

# S3 Bucket
variable "bucket_suffix" {
  default = "cloudnova-frontend-joshuaveeraiah1245"
}
