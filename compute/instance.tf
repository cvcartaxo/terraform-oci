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
    source_id   = var.image_id
  }
}