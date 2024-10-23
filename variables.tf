variable "name" {
  type        = string
  description = "The name for the VPC."
}

variable "cidr" {
  type        = string
  description = "The CIDR for the VPC."
}

variable "public_subnets" {
  type        = list(string)
  description = "The public subnets for the VPC."
}

variable "private_subnets" {
  type        = list(string)
  description = "The private subnets for the VPC."
}

variable "database_subnets" {
  type        = list(string)
  description = "The database subnets for the VPC."
}
