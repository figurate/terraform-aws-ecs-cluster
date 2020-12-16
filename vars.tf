variable "name" {
  description = "Cluster name"
}

variable "environment_type" {
  description = "Cluster environment categorisation"
}

variable "capacity_providers" {
  description = "A list of capacity providers for the cluster"
  default     = []
}

variable "default_capacity_provider" {
  description = "Default capacity provider for the cluster"
  default     = null
}

variable "enable_container_insights" {
  description = "Enable CloudWatch insights for containers in the cluster"
  type        = bool
  default     = true
}

variable "custom_tags" {
  description = "A map of custom tags applied to the ECS cluster"
  type        = map(any)
  default     = {}
}
