module "naming" {
  source = "git::https://github.com/cloud-labs-infra/terraform-naming-convention.git?ref=v1.0.0"

  environment = var.environment
  project     = var.project
}

module "address_group_example" {
  source       = "cloud-labs-infra/address-group/huaweicloud"
  version      = "1.1.0"
  name         = module.naming.common_name
  name_postfix = "example"

  addresses = var.ip_wight_list
}

module "security_group_example" {
  source  = "cloud-labs-infra/security-group/huaweicloud"
  version = "1.0.0"

  name         = module.naming.common_name
  name_postfix = "example"

  rules = {
    "Allow to All" = {
      direction        = "egress"
      ether_type       = "IPv4"
      remote_ip_prefix = "0.0.0.0/0"
    },
    "Allow from Example Address group" = {
      direction               = "ingress"
      ether_type              = "IPv4"
      remote_address_group_id = module.address_group_example.id
    }
  }
}
