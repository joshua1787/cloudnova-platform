variable "project_name" {
  description = "Project name for tagging"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID for ALB and TG"
  type        = string
}

variable "public_subnet_ids" {
  description = "List of Public Subnet IDs for ALB"
  type        = list(string)
}

variable "alb_sg_id" {
  description = "Security Group ID for ALB"
  type        = string
}

variable "target_port" {
  description = "Port on target container"
  type        = number
}

variable "listener_port" {
  description = "Port on ALB listener"
  type        = number
}
