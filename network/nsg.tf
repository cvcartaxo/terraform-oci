resource "oci_core_network_security_group" "nsg" {
  compartment_id = var.compartment_ocid
  vcn_id         = var.vcn_id
  display_name   = "instance-nsg"
}

output "nsg_id" {
  value = oci_core_network_security_group.nsg.id
}