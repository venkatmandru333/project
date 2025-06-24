variable "vpc_id" {
  type        = string
  description = "The ID of the VPC"
}

variable "public_subnet_cidrs" {
  type        = list(string)
  description = "List of CIDRs for public subnets"
}

variable "private_subnet_cidrs" {
  type        = list(string)
  description = "List of CIDRs for private subnets"
}

variable "azs" {
  type        = list(string)
  description = "List of availability zones"
}

variable "environment" {
  type        = string
  description = "Environment name (used for tagging)"
}

