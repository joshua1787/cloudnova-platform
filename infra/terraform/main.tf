terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

# VPC Module
module "vpc" {
  source = "./modules/vpc"
  
  project_name          = var.project_name
  vpc_cidr              = var.vpc_cidr
  public_subnet_cidr_1  = var.public_subnet_cidr_1
  public_subnet_cidr_2  = var.public_subnet_cidr_2
  private_subnet_cidr_1 = var.private_subnet_cidr_1
  private_subnet_cidr_2 = var.private_subnet_cidr_2
  availability_zone_1   = var.availability_zone_1
  availability_zone_2   = var.availability_zone_2
}

# Security Group Module
module "security" {
  source = "./modules/security"

  project_name = var.project_name
  vpc_id       = module.vpc.vpc_id
  container_port = var.container_port
}

# ALB Module
module "alb" {
  source = "./modules/alb"

  project_name      = var.project_name
  vpc_id            = module.vpc.vpc_id
  public_subnet_ids =  [module.vpc.public_subnet_id_1, module.vpc.public_subnet_id_2]
  alb_sg_id         = module.security.alb_sg_id
  target_port       = var.container_port
  listener_port     = 80
}

# ECR Module
module "ecr" {
  source = "./modules/ecr"
  
  project_name = var.project_name
}

# RDS Module
module "rds" {
  source = "./modules/rds"

  project_name        = var.project_name
  private_subnet_ids  = [module.vpc.private_subnet_id_1, module.vpc.private_subnet_id_2]
  rds_sg_id           = module.security.rds_sg_id
  database_name       = var.database_name
  master_username     = var.master_username
  master_password     = var.master_password
}

# ECS Module
module "ecs" {
  source               = "./modules/ecs"

  project_name         = var.project_name
  public_subnet_id     = module.vpc.public_subnet_id_1
  ecs_service_sg_id    = module.security.ecs_sg_id
  target_group_arn     = module.alb.target_group_arn
  task_cpu             = var.task_cpu
  task_memory          = var.task_memory
  container_name       = var.container_name
  container_image      = var.container_image
  container_cpu        = var.container_cpu
  container_memory     = var.container_memory
  container_port       = var.container_port
  desired_count        = var.desired_count
}

# S3 Module
module "s3" {
  source = "./modules/s3"

  project_name  = var.project_name
  bucket_suffix = var.bucket_suffix
}
