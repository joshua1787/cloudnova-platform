variable "project_name" {
  description = "Project name for tagging"
  type        = string
}

variable "private_subnet_ids" {
  description = "List of Private Subnet IDs for RDS Subnet Group"
  type        = list(string)
}

variable "rds_sg_id" {
  description = "RDS Security Group ID"
  type        = string
}

variable "database_name" {
  description = "Database Name"
  type        = string
}

variable "master_username" {
  description = "Master DB Username"
  type        = string
}

variable "master_password" {
  description = "Master DB Password"
  type        = string
}
