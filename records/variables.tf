# variable "zone_name" {
#   description = "Zone name - domain name"
#   default     = ""
# }

# variable "vpc_id" {
#   description = "VPC ID"
#   default     = ""
# }

# variable "environment" {
#   description = "Environment name"
#   default     = ""
# }

# variable "record" {
#   description = "Environment name"
#   default     = ""
# }

# variable "hostname" {
#   description = "Environment name"
#   default     = ""
# }


variable "route53_hosted_zone_id" {
  description = "Route53 hosted zone id"
  type        = string
}

variable "route53_a_record_ttl" {
  description = "Route53 A record TTL"
  type        = string
}

variable "instance_module" {
  description = "Instance module tags"
  type        = string
}

variable "instance_module_private_ip" {
  description = "Instance module private ip"
  type        = string
}

