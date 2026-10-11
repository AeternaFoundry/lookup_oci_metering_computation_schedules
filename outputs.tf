output "metering_computation_schedules_lookup_id" {
  description = "Map of id values across all metering_computation_schedules_lookup, keyed the same as var.metering_computation_schedules_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_metering_computation_schedules.metering_computation_schedules_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "metering_computation_schedules_lookup_compartment_id" {
  description = "Map of compartment_id values across all metering_computation_schedules_lookup, keyed the same as var.metering_computation_schedules_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_metering_computation_schedules.metering_computation_schedules_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "metering_computation_schedules_lookup_filter" {
  description = "Map of filter values across all metering_computation_schedules_lookup, keyed the same as var.metering_computation_schedules_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_metering_computation_schedules.metering_computation_schedules_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "metering_computation_schedules_lookup_name" {
  description = "Map of name values across all metering_computation_schedules_lookup, keyed the same as var.metering_computation_schedules_lookup except keys with no name are omitted"
  value       = { for k, v in data.oci_metering_computation_schedules.metering_computation_schedules_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "metering_computation_schedules_lookup_schedule_collection" {
  description = "Map of schedule_collection values across all metering_computation_schedules_lookup, keyed the same as var.metering_computation_schedules_lookup except keys with no schedule_collection are omitted"
  value       = { for k, v in data.oci_metering_computation_schedules.metering_computation_schedules_lookup : k => v.schedule_collection if v.schedule_collection != null && length(v.schedule_collection) > 0 }
}

