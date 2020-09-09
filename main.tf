/**
 * # ![AWS](aws-logo.png) ECS Cluster
 *
 * Purpose: Blueprints for AWS ECS Clusters
 *
 * ![AWS ECS Cluster](aws_ecs_cluster.png)
 */
data "aws_vpc" "tenant" {
  default = var.vpc_default
  tags    = var.vpc_tags
}

resource "aws_ecs_cluster" "cluster" {
  name               = var.name
  capacity_providers = [var.default_capacity_provider]

  default_capacity_provider_strategy {
    capacity_provider = var.default_capacity_provider
    weight            = 100
  }

  setting {
    name  = "containerInsights"
    value = "enabled"
  }
}

resource "aws_service_discovery_private_dns_namespace" "cluster" {
  count = var.servicediscovery_enabled ? 1 : 0
  name  = var.name
  vpc   = data.aws_vpc.tenant.id
}

resource "aws_apigatewayv2_api" "cluster" {
  count         = var.apigateway_enabled ? 1 : 0
  name          = var.name
  protocol_type = "HTTP"
}
