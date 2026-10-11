data "aws_vpc_endpoint_associations" "vpc_endpoint_associations_lookup" {
  for_each = var.vpc_endpoint_associations_lookup

  vpc_endpoint_id = each.value.vpc_endpoint_id
  region          = each.value.region
}

