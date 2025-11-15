resource "oci_core_network_security_group_security_rule" "ssh" {
  network_security_group_id = oci_core_network_security_group.nsg.id
  direction                 = "INGRESS"
  protocol                  = "6"

  tcp_options {
    destination_port_range {
      min = 22
      max = 22
    }
  }

  source = "0.0.0.0/0"
}

resource "oci_core_network_security_group_security_rule" "http" {
  network_security_group_id = oci_core_network_security_group.nsg.id
  direction                 = "INGRESS"
  protocol                  = "6"

  tcp_options {
    destination_port_range {
      min = 80
      max = 80
    }
  }

  source = "0.0.0.0/0"
}
