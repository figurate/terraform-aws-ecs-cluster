variable "name" {
  description = "Cluster name"
}

variable "capacity_providers" {
  description = "A list of capacity providers for the cluster"
  default     = []
}

variable "default_capacity_provider" {
  description = "Default capacity provider for the cluster"
  default     = null
}
