# Huawei Cloud VPC Address Group
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.4 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_huaweicloud"></a> [huaweicloud](#provider\_huaweicloud) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [huaweicloud_vpc_address_group.main](https://registry.terraform.io/providers/hashicorp/huaweicloud/latest/docs/resources/vpc_address_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_addresses"></a> [addresses](#input\_addresses) | Specifies an array of one or more IP addresses, the address can be a single IP address, IP address range or IP address | `list(string)` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | Specifies the supplementary information about the IP address group | `string` | `null` | no |
| <a name="input_force_destroy"></a> [force\_destroy](#input\_force\_destroy) | Specifies whether to forcibly destroy the address group if it is associated with a security group rule,the address<br>  group and the associated security group rule will be deleted together | `bool` | `false` | no |
| <a name="input_ip_version"></a> [ip\_version](#input\_ip\_version) | Specifies the IP version, changing this creates a new address group | `string` | `"4"` | no |
| <a name="input_max_capacity"></a> [max\_capacity](#input\_max\_capacity) | Specifies the maximum number of addresses that an address group can contain | `number` | `20` | no |
| <a name="input_name"></a> [name](#input\_name) | Specifies a name for the Address Group | `string` | n/a | yes |
| <a name="input_name_postfix"></a> [name\_postfix](#input\_name\_postfix) | Specifies a postfix for the Address Group | `string` | `null` | no |
| <a name="input_region"></a> [region](#input\_region) | Specifies the region in which to create the resource, if omitted, the provider-level region will be used | `string` | `null` | no |
| <a name="input_timeouts"></a> [timeouts](#input\_timeouts) | Address group timeouts configuration in minutes | <pre>map(object({<br>    create = optional(number, 5)<br>    update = optional(number, 5)<br>    delete = optional(number, 5)<br>  }))</pre> | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The Address Group ID in UUID format |
<!-- END_TF_DOCS -->