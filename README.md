# ![AWS](aws-logo.png) ECS Cluster

Purpose: Blueprints for AWS ECS Clusters

![AWS ECS Cluster](aws\_ecs\_cluster.png)

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| capacity\_providers | A list of capacity providers for the cluster | `list` | `[]` | no |
| default\_capacity\_provider | Default capacity provider for the cluster | `any` | `null` | no |
| name | Cluster name | `any` | n/a | yes |

## Outputs

No output.

