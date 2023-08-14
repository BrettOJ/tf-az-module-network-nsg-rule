locals {

  inbounds = { for key, value in local.inbound_rules : "${key}" =>
    {
      protocol = value.protocol == "*" ? "any" : value.protocol
      access   = value.access
      priority = value.priority
      port     = coalesce(value.source_port_range, "*") == "*" ? "any" : value.source_port_range
    }
  }
  outbounds = { for key, value in local.outbound_rules : "${key}" =>
    {
      protocol = value.protocol == "*" ? "any" : value.protocol
      access   = value.access
      priority = value.priority
      port     = coalesce(value.source_port_range, "*") == "*" ? "any" : value.source_port_range
    }
  }

  inbound_names = {
    for k, value in local.inbounds :
    "${k}" => {
      name = "nsgr-${value.priority}-${value.access}-${value.protocol}-${value.port}-in"
    }
  }

  outbound_names = {
    for k, value in local.outbounds :
    "${k}" => {
      name = "nsgr-${value.priority}-${value.access}-${value.protocol}-${value.port}-out"
    }
  }

}

