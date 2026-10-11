variable "incident_types" {
  description = <<EOT
Map of incident_types, attributes below
Required:
    - name
Optional:
    - configuration
    - description
    - is_default
EOT

  type = map(object({
    name = string
    configuration = optional(object({
      allow_incident_deletion      = optional(bool)
      allow_workflows              = optional(bool)
      create_message               = optional(string)
      editable_timestamps          = optional(bool)
      private_incidents            = optional(bool)
      private_incidents_by_default = optional(bool)
      slug_source                  = optional(string)
      test_incidents               = optional(bool)
    }))
    description = optional(string)
    is_default  = optional(bool)
  }))
}

