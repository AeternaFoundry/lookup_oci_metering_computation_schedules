data "oci_metering_computation_schedules" "metering_computation_schedules_lookup" {
  for_each = var.metering_computation_schedules_lookup

  compartment_id = each.value.compartment_id
  name           = each.value.name

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

