# # Terraform Output Values
# /* Concepts Covered
# 1. For Loop with List
# 2. For Loop with Map
# 3. For Loop with Map Advanced
# 4. Legacy Splat Operator (latest) - Returns List
# 5. Latest Generalized Splat Operator - Returns the List
# */

# # Output - For Loop with List
# output "for_output_list" {
#   description = "For Loop with List"
#   value = [for instance in aws_instance.myec2vm: instance.public_dns]
# }

# # Output - For Loop with Map
# output "for_output_map1" {
#   description = "For Loop with Map"
#   value = {for instance in aws_instance.myec2vm: instance.id => instance.public_dns}
# }

# # Output - For Loop with Map Advanced
# output "for_output_map2" {
#   description = "For Loop with Map - Advanced"
#   value = {for c, instance in aws_instance.myec2vm: c => instance.public_dns}
# }

# # Output Legacy Splat Operator (Legacy) - Returns the List
# /*
# output "legacy_splat_instance_publicdns" {
#   description = "Legacy Splat Operator"
#   value = aws_instance.myec2vm.*.public_dns
# }
# */

# # Output Latest Generalized Splat Operator - Returns the List
# output "latest_splat_instance_publicdns" {
#   description = "Generalized latest Splat Operator"
#   value = aws_instance.myec2vm[*].public_dns
# }

output "latest_1" {
  description = "Generalized out 1"
  value       = var.aws_region
}

output "latest_2" {
  description = "Generalized out 2"
  value       = var.instance_type_list
}

output "latest_3" {
  description = "Generalized out 3"
  value       = toset(var.instance_type_list)
}
output "latest_4" {
  description = "Generalized out 4"
  value       = [for k, v in var.instance_type_map : k if k != "qa"]
}
output "latest_5" {
  description = "Generalized out 4"
  value       = [for k, v in var.instance_type_map : v]
}

output "latest_6" {
  description = "Generalized out 4"
  value       = [for i, v in var.instance_type_list : i]
}

output "latest_7" {
  description = "Generalized out 7"
  value       = tolist(data.aws_ami.amzlinux2.block_device_mappings)[0].ebs.snapshot_id
}
