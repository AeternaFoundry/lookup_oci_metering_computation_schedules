variable "metering_computation_schedules_lookup" {
  description = <<EOT
Map of metering_computation_schedules_lookup, attributes below
Required:
    - compartment_id
Optional:
    - name
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id = string
    name           = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

