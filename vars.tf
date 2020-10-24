variable "name" {
  description = "Cluster name"
}

variable "capacity_providers" {
  description = "A list of capacity providers for the cluster"
  default = []
}

variable "default_capacity_provider" {
  description = "Default capacity provider for the cluster"
  default = null
}

variable "vpc_default" {
  description = "Use the default VPC for optional features (e.g. service discovery)"
  default     = true
}

variable "vpc_tags" {
  type        = map(any)
  description = "Lookup tags to identify VPC for optional features (e.g. service discovery)"
  default     = {}
}

variable "servicediscovery_enabled" {
  description = "Create service discovery private zone for the cluster"
  default     = false
}

variable "apigateway_enabled" {
  description = "Create an API Gateway endpoint for the cluster"
  default     = false
}
