
variable "resource_group_name" {
  description = "(Required)resource grups of NSG"
  type        = string
}

variable "nsg_name" {
  description = "Name of the NSG. NSG shld be in the same resource group"
}

variable "location" {
  description = "Location of the resource"
  type        = string
}

variable "create_nsg" {
  type = bool
  default = false
}

variable "diag_object" {
  description = "contains the logs and metrics for diagnostics"
  type = object({
    log_analytics_workspace_id = string
    log                        = list(tuple([string, bool, bool, number]))
    metric                     = list(tuple([string, bool, bool, number]))
  })
  default = null
}

variable "subnet_name" {
  description = "Name of the subnet"
  type        = string
}
