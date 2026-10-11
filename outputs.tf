output "incident_types_id" {
  description = "Map of id values across all incident_types, keyed the same as var.incident_types except keys with no id are omitted"
  value       = { for k, v in datadog_incident_type.incident_types : k => v.id if v.id != null && length(v.id) > 0 }
}
output "incident_types_configuration" {
  description = "Map of configuration values across all incident_types, keyed the same as var.incident_types except keys with no configuration are omitted"
  value       = { for k, v in datadog_incident_type.incident_types : k => v.configuration if v.configuration != null && length(v.configuration) > 0 }
}
output "incident_types_description" {
  description = "Map of description values across all incident_types, keyed the same as var.incident_types except keys with no description are omitted"
  value       = { for k, v in datadog_incident_type.incident_types : k => v.description if v.description != null && length(v.description) > 0 }
}
output "incident_types_is_default" {
  description = "Map of is_default values across all incident_types, keyed the same as var.incident_types except keys with no is_default are omitted"
  value       = { for k, v in datadog_incident_type.incident_types : k => v.is_default if v.is_default != null }
}
output "incident_types_name" {
  description = "Map of name values across all incident_types, keyed the same as var.incident_types except keys with no name are omitted"
  value       = { for k, v in datadog_incident_type.incident_types : k => v.name if v.name != null && length(v.name) > 0 }
}

