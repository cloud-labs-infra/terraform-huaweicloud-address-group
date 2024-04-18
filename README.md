# Huawei Cloud VPC Address Group
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.7 |
| <a name="requirement_huaweicloud"></a> [huaweicloud](#requirement\_huaweicloud) | ~>1.63 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_huaweicloud"></a> [huaweicloud](#provider\_huaweicloud) | ~>1.63 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [huaweicloud_vpc_address_group.main](https://registry.terraform.io/providers/huaweicloud/huaweicloud/latest/docs/resources/vpc_address_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_addresses"></a> [addresses](#input\_addresses) | Specifies an array of one or more IP addresses, the address can be a single IP address, IP address range or IP address | `list(string)` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | Specifies the supplementary information about the IP address group | `string` | `null` | no |
| <a name="input_ip_version"></a> [ip\_version](#input\_ip\_version) | Specifies the IP version, changing this creates a new address group | `string` | `"4"` | no |
| <a name="input_name"></a> [name](#input\_name) | Specifies a name for the Address Group | `string` | n/a | yes |
| <a name="input_name_postfix"></a> [name\_postfix](#input\_name\_postfix) | Specifies a postfix for the Address Group | `string` | `null` | no |
| <a name="input_region"></a> [region](#input\_region) | Specifies the region in which to create the resource, if omitted, the provider-level region will be used | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The Address Group ID in UUID format |
<!-- END_TF_DOCS -->