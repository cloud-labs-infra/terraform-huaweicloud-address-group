locals {
  name = var.name_postfix == null ? format("%s-address-group", var.name) : format("%s-address-group-%s", var.name, var.name_postfix)
}

resource "huaweicloud_vpc_address_group" "main" {
  name        = local.name
  region      = var.region
  ip_version  = var.ip_version
  addresses   = var.addresses
  description = var.description
}
