variable "name" {
  description = "Cluster name"
}

variable "servicediscovery_enabled" {
  description = "Create service discovery private zone for the cluster"
  default     = false
}
