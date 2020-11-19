/**
 * # ![AWS](aws-logo.png) ECS Cluster
 *
 * Purpose: Blueprints for AWS ECS Clusters
 *
 * ![AWS ECS Cluster](aws_ecs_cluster.png)
 */
resource "aws_ecs_cluster" "cluster" {
  name               = var.name
  capacity_providers = var.capacity_providers

  dynamic "default_capacity_provider_strategy" {
    for_each = var.default_capacity_provider != null ? [1] : []
    content {
      capacity_provider = var.default_capacity_provider
      weight            = 100
    }
  }

  setting {
    name  = "containerInsights"
    value = "enabled"
  }
}
