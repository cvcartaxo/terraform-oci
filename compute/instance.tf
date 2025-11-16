resource "oci_core_instance" "vm" {
  compartment_id      = var.compartment_ocid
  availability_domain = var.availability_domain
  display_name        = "free-instance"

  shape = "VM.Standard.E2.1.Micro"

  create_vnic_details {
    subnet_id        = var.subnet_ocid
    assign_public_ip = true
    nsg_ids          = [var.nsg_id]
  }

  source_details {
    source_type = "image"
    source_id   = "ocid1.image.oc1.sa-vinhedo-1.aaaaaaaa4juargthqy2zjibd5wkhkpqmdzphghtkltvm5iatsjnl4v456p6a"
  }

  metadata = {
    ssh_authorized_keys = tls_private_key.ssh.public_key_openssh
 }
}