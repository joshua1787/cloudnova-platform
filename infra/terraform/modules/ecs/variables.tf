variable "aws_region" {
  type        = string
  description = "AWS Region"
}

variable "project_name" {
  description = "Project Name"
  type        = string
}

variable "ecs_service_sg_id" {
  description = "ECS Service Security Group ID"
  type        = string
}

variable "target_group_arn" {
  description = "Target Group ARN for the ALB"
  type        = string
}

variable "public_subnet_id_1" {
  description = "Public Subnet ID 1"
  type        = string
}

variable "public_subnet_id_2" {
  description = "Public Subnet ID 2"
  type        = string
}

variable "task_cpu" {
  description = "CPU for ECS Task"
  type        = string
}

variable "task_memory" {
  description = "Memory for ECS Task"
  type        = string
}

variable "container_name" {
  description = "Container Name"
  type        = string
}

variable "container_image" {
  description = "Container Image URL"
  type        = string
}

variable "container_cpu" {
  description = "Container CPU Units"
  type        = number
}

variable "container_memory" {
  description = "Container Memory MB"
  type        = number
}

variable "container_port" {
  description = "Container Port"
  type        = number
}

variable "desired_count" {
  description = "Desired number of ECS tasks"
  type        = number
}
