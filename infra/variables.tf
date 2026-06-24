variable "environment" {
  description = "Environment name"
  type        = string
  default     = "development"

  validation {
    condition     = contains(["development", "staging", "production"], var.environment)
    error_message = "environment must be development, staging, or production."
  }
}

variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-west-2"

  validation {
    condition     = can(regex("^[a-z]{2}-[a-z]+-[0-9]+$", var.aws_region))
    error_message = "aws_region must look like us-west-2."
  }
}

variable "azs_count" {
  description = "Number of availability zones"
  type        = number
  default     = 2

  validation {
    condition     = var.azs_count >= 2 && var.azs_count <= 3
    error_message = "azs_count must be between 2 and 3 for this project."
  }
}

variable "hosted_zone_name" {
  description = "The name of the Route 53 Hosted Zone (e.g., example.com)"
  type        = string
  default     = "three-tier-app.com"
}

variable "enable_deletion_protection" {
  description = "Deletion protection"
  type        = bool
  default     = false
}


# Database

variable "db_instance_class" {
  description = "Database instance class"
  type        = string
  default     = "db.t3.micro"
}

variable "db_allocated_storage" {
  description = "Allocated storage in GB for the database"
  type        = number
  default     = 20

  validation {
    condition     = var.db_allocated_storage >= 20
    error_message = "RDS allocated storage must be at least 20 GB."
  }
}

variable "db_max_allocated_storage" {
  description = "Maximum allocated storage in GB for the database"
  type        = number
  default     = 100
}

variable "db_name" {
  description = "Database name"
  type        = string
  default     = "mydb"
}

variable "db_username" {
  description = "Database username"
  type        = string
  default     = "app_user"
}

variable "db_password" {
  description = "Database password"
  type        = string
  sensitive   = true
}

variable "db_apply_immediately" {
  description = "Apply changes immediately"
  type        = bool
  default     = true
}

variable "db_skip_final_snapshot" {
  description = "Skip final snapshot"
  type        = bool
  default     = true
}

variable "db_backup_retention_period" {
  description = "Number of days to retain automated backups"
  type        = number
  default     = 7
}

variable "db_multi_az" {
  description = "Enable Multi-AZ RDS deployment"
  type        = bool
  default     = false
}


# Backend 

variable "backend_domains" {
  description = "Backend domains"
  type        = list(string)
  default     = ["api.three-tier-app.com"]
}

variable "backend_service_cpu" {
  description = "Backend service CPU"
  type        = number
  default     = 1024
}

variable "backend_service_memory" {
  description = "Backend service memory"
  type        = number
  default     = 2048
}


# Frontend

variable "frontend_domains" {
  description = "Frontend domains"
  type        = list(string)
  default     = ["three-tier-app.com", "www.three-tier-app.com"]
}

variable "frontend_cdn_price_class" {
  description = "CloudFront price class"
  type        = string
  default     = "PriceClass_100"
}
