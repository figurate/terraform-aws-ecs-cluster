module "cluster" {
  source = "../.."

  name = var.name
  servicediscovery_enabled = var.servicediscovery_enabled
}
