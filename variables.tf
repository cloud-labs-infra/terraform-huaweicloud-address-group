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
    condition     = var.ip_version == "4" || var.ip_version == "6"
    error_message = "There are two versions of IP that currently coexist in the global Internet: 4(IPv4) and 6(IPv6)"
  }
}

variable "description" {
  description = "Specifies the supplementary information about the IP address group"
  type        = string
  default     = null
}
