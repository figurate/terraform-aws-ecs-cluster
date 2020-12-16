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
| custom\_tags | A map of custom tags applied to the ECS cluster | `map(any)` | `{}` | no |
| default\_capacity\_provider | Default capacity provider for the cluster | `any` | `null` | no |
| enable\_container\_insights | Enable CloudWatch insights for containers in the cluster | `bool` | `true` | no |
| environment\_type | Cluster environment categorisation | `any` | n/a | yes |
| name | Cluster name | `any` | n/a | yes |

## Outputs

No output.

