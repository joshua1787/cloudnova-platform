output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_id_1" {
  value = module.vpc.public_subnet_id_1
}

output "public_subnet_id_2" {
  value = module.vpc.public_subnet_id_2
}

output "private_subnet_id_1" {
  value = module.vpc.private_subnet_id_1
}

output "private_subnet_id_2" {
  value = module.vpc.private_subnet_id_2
}

output "alb_sg_id" {
  value = module.security.alb_sg_id
}

output "ecs_sg_id" {
  value = module.security.ecs_sg_id
}

output "rds_sg_id" {
  value = module.security.rds_sg_id
}

output "alb_dns_name" {
  value = module.alb.alb_dns_name
}

output "alb_arn" {
  value = module.alb.alb_arn
}

output "target_group_arn" {
  value = module.alb.target_group_arn
}

output "ecr_repository_url" {
  value = module.ecr.ecr_repository_url
}

output "ecr_repository_name" {
  value = module.ecr.ecr_repository_name
}

output "rds_cluster_id" {
  value = module.rds.rds_cluster_id
}

output "rds_cluster_endpoint" {
  value = module.rds.rds_cluster_endpoint
}

output "s3_bucket_name" {
  value = module.s3.s3_bucket_name
}

output "s3_bucket_website_endpoint" {
  value = module.s3.s3_bucket_website_endpoint
}