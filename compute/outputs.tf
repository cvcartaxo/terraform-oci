output "public_ip" {
  value = oci_core_instance.vm.public_ip
}

output "instance_id" {
  value = oci_core_instance.vm.id
}