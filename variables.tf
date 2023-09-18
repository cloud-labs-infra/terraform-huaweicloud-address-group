variable "name" {
  description = "Specifies a name for the Address Group"
  type        = string
  nullable    = false
}

variable "name_postfix" {
  description = "Specifies a postfix for the Address Group"
  type        = string
  default     = null
}

variable "region" {
  description = "Specifies the region in which to create the resource, if omitted, the provider-level region will be used"
  type        = string
  default     = null
}

variable "addresses" {
  description = "Specifies an array of one or more IP addresses, the address can be a single IP address, IP address range or IP address"
  type        = list(string)
  validation {
    condition     = length(var.addresses) <= 20
    error_message = "The maximum length is 20."
  }
}

variable "ip_version" {
  description = "Specifies the IP version, changing this creates a new address group"
  type        = string
  default     = "4"
  validation {
    condition     = var.ip_version == "4" && var.ip_version == "6"
    error_message = "There are two versions of IP that currently coexist in the global Internet: 4(IPv4) and 6(IPv6)"
  }
}

variable "description" {
  description = "Specifies the supplementary information about the IP address group"
  type        = string
  default     = null
}

variable "max_capacity" {
  description = "Specifies the maximum number of addresses that an address group can contain"
  type        = number
  default     = 20
  validation {
    condition     = var.max_capacity >= 1 && var.max_capacity <= 20
    error_message = "Value range: 1-20"
  }
}

variable "force_destroy" {
  description = <<DES
  Specifies whether to forcibly destroy the address group if it is associated with a security group rule,the address
  group and the associated security group rule will be deleted together
  DES
  type        = bool
  default     = false
}

variable "timeouts" {
  description = "Address group timeouts configuration in minutes"
  type = object({
    create = optional(number, 5)
    update = optional(number, 5)
    delete = optional(number, 5)
  })
  default = {}
}
