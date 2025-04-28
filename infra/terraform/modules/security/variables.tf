variable "project_name" {
  description = "Project name for tagging"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID for security groups"
  type        = string
}

variable "container_port" {
  description = "Container port for ECS service"
  type        = number
}
