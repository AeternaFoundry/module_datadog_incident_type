resource "datadog_incident_type" "incident_types" {
  for_each = var.incident_types

  name          = each.value.name
  configuration = each.value.configuration
  description   = each.value.description
  is_default    = each.value.is_default
}

