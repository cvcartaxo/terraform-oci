output "public_ip" {
  value = module.compute.public_ip
}
output "instance_ocid" {
  value = module.compute.instance_id
}
output "ssh_private_key" {
  value     = "id_rsa"
  sensitive = true
}
