locals {
  name = var.name_postfix == null ? format("%s-address-group", var.name) : format("%s-address-group-%s", var.name, var.name_postfix)
}

resource "huaweicloud_vpc_address_group" "main" {
  name       = local.name
  region     = var.region
  ip_version = var.ip_version

  addresses     = slice(var.addresses, 0, var.max_capacity - 1)
  description   = var.description
  max_capacity  = var.max_capacity
  force_destroy = var.force_destroy

  timeouts {
    create = var.timeouts.create
    update = var.timeouts.update
    delete = var.timeouts.delete
  }
}
