variable "aws_region" {
  description = "The AWS region where the VPC will be created."
  type        = string
  default     = "ap-southeast-2"
}

variable "vpc_name" {
  description = "The name of the VPC."
  type        = string
  default     = "my-vpc"
}

variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC."
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_count" {
  description = "The number of public subnets to create."
  type        = number
  default     = 2
}

variable "private_subnet_count" {
  description = "The number of private subnets to create."
  type        = number
  default     = 2
}

variable "public_subnet_cidr_blocks" {
  description = "The CIDR blocks for public subnets."
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidr_blocks" {
  description = "The CIDR blocks for private subnets."
  type        = list(string)
  default     = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "availability_zones" {
  description = "List of availability zones where subnets will be created."
  type        = list(string)
  default     = ["ap-southeast-2a", "ap-southeast-2b","ap-southeast-2c"]
}

