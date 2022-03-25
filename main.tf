/**
 * # ![AWS](aws-logo.png) ECS Cluster
 *
 * Purpose: Blueprints for AWS ECS Clusters
 *
 * ![AWS ECS Cluster](aws_ecs_cluster.png)
 */
resource "aws_ecs_cluster" "cluster" {
  name = var.name

  #checkov:skip=CKV_AWS_65:Dynamic container insights
  setting {
    name  = "containerInsights"
    value = var.enable_container_insights ? "enabled" : "disabled"
  }

  tags = merge(
    var.custom_tags,
    {
      Name            = var.name
      EnvironmentType = var.environment_type
      "figurate:s"    = "figurate/ecs-cluster/aws"
    },
  )
}

resource "aws_ecs_cluster_capacity_providers" "capacity_providers" {
  cluster_name       = aws_ecs_cluster.cluster.name
  capacity_providers = var.capacity_providers

  dynamic "default_capacity_provider_strategy" {
    for_each = var.default_capacity_provider != null ? [1] : []
    content {
      capacity_provider = var.default_capacity_provider
      weight            = 100
    }
  }
}
