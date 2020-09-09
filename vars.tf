variable "name" {
  description = "Cluster name"
}

variable "default_capacity_provider" {
  description = "Default capacity provider for the cluster"
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
