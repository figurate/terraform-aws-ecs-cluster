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
| apigateway\_enabled | Create an API Gateway endpoint for the cluster | `bool` | `false` | no |
| default\_capacity\_provider | Default capacity provider for the cluster | `any` | n/a | yes |
| name | Cluster name | `any` | n/a | yes |
| servicediscovery\_enabled | Create service discovery private zone for the cluster | `bool` | `false` | no |
| vpc\_default | Use the default VPC for optional features (e.g. service discovery) | `bool` | `true` | no |
| vpc\_tags | Lookup tags to identify VPC for optional features (e.g. service discovery) | `map(any)` | `{}` | no |

## Outputs

No output.

