variable "vpc_endpoint_associations_lookup" {
  description = <<EOT
Map of vpc_endpoint_associations_lookup, attributes below
Required:
    - vpc_endpoint_id
Optional:
    - region
EOT

  type = map(object({
    vpc_endpoint_id = string
    region          = optional(string)
  }))
}

