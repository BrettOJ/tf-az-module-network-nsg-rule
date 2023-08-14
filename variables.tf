
variable "resource_group_name" {
  description = "(Required)resource grups of NSG"
  type        = string
}

variable "nsg_name" {
  description = "Name of the NSG. NSG shld be in the same resource group"
}


variable "inbound_rules" {
  type = list(object({
    priority                                   = string
    access                                     = string
    protocol                                   = string
    source_port_range                          = string
    destination_port_range                     = string
    source_address_prefix                      = string
    destination_address_prefix                 = string
    source_port_ranges                         = list(string)
    destination_port_ranges                    = list(string)
    source_address_prefixes                    = list(string)
    destination_address_prefixes               = list(string)
    source_application_security_group_ids      = list(string)
    destination_application_security_group_ids = list(string)
  }))
}

variable "outbound_rules" {
  type = list(object({
    priority                                   = string
    access                                     = string
    protocol                                   = string
    source_port_range                          = string
    destination_port_range                     = string
    source_address_prefix                      = string
    destination_address_prefix                 = string
    source_port_ranges                         = list(string)
    destination_port_ranges                    = list(string)
    source_address_prefixes                    = list(string)
    destination_address_prefixes               = list(string)
    source_application_security_group_ids      = list(string)
    destination_application_security_group_ids = list(string)
  }))
}



variable "dependencies" {
  type        = list
  description = "List of dependecies modules or resources"
  default     = null
}
