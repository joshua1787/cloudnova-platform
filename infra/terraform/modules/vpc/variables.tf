variable "project_name" {
  description = "Project name for tagging"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

# Public Subnet 1
variable "public_subnet_cidr_1" {
  description = "CIDR block for Public Subnet 1"
  type        = string
}

# Public Subnet 2
variable "public_subnet_cidr_2" {
  description = "CIDR block for Public Subnet 2"
  type        = string
}

# Private Subnet 1
variable "private_subnet_cidr_1" {
  description = "CIDR block for Private Subnet 1"
  type        = string
}

# Private Subnet 2
variable "private_subnet_cidr_2" {
  description = "CIDR block for Private Subnet 2"
  type        = string
}

# Availability Zone 1
variable "availability_zone_1" {
  description = "Availability Zone for Subnet 1"
  type        = string
}

# Availability Zone 2
variable "availability_zone_2" {
  description = "Availability Zone for Subnet 2"
  type        = string
}
