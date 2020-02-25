variable "name" {
  type        = string
  description = "Name of the hosted zone"
}

variable "environment" {
  type        = string
  description = "Environment this Route 53 zone belongs to"
}

variable "main_vpc" {
  type        = string
  description = "Main VPC ID that will be associated with this hosted zone"
}

variable "secondary_vpcs" {
  type        = list
  default     = []
  description = "List of VPCs that will also be associated with this zone"
}
