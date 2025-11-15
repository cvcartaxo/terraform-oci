terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "5.29.0"
    }
    tls = {
      source = "hashicorp/tls"
    }
    local = {
      source = "hashicorp/local"
    }
  }
}