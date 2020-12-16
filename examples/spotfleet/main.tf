module "cluster" {
  source = "../.."

  name                      = var.name
  environment_type          = var.environment_type
  enable_container_insights = false
}
