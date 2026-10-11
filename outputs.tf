output "vpc_endpoint_associations_lookup_associations" {
  description = "Map of associations values across all vpc_endpoint_associations_lookup, keyed the same as var.vpc_endpoint_associations_lookup"
  value       = { for k, v in data.aws_vpc_endpoint_associations.vpc_endpoint_associations_lookup : k => v.associations if v.associations != null && length(v.associations) > 0 }
}
output "vpc_endpoint_associations_lookup_region" {
  description = "Map of region values across all vpc_endpoint_associations_lookup, keyed the same as var.vpc_endpoint_associations_lookup"
  value       = { for k, v in data.aws_vpc_endpoint_associations.vpc_endpoint_associations_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}
output "vpc_endpoint_associations_lookup_vpc_endpoint_id" {
  description = "Map of vpc_endpoint_id values across all vpc_endpoint_associations_lookup, keyed the same as var.vpc_endpoint_associations_lookup"
  value       = { for k, v in data.aws_vpc_endpoint_associations.vpc_endpoint_associations_lookup : k => v.vpc_endpoint_id if v.vpc_endpoint_id != null && length(v.vpc_endpoint_id) > 0 }
}

