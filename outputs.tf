output "public_ip" {
  value = oci_core_instance.vm.public_ip
}

output "private_key_path" {
  value = local_file.private_key.filename
}

output "public_key_path" {
  value = local_file.public_key.filename
}
