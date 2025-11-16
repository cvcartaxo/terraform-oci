terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "~> 5.0"
    }
  }
}


module "compute" {
  source              = "./compute"
  compartment_ocid    = var.compartment_ocid
  subnet_ocid         = var.subnet_ocid
  availability_domain = var.availability_domain
  image_id            = module.images.image_id
  nsg_id              = module.network.nsg_id
}

module "network" {
  source           = "./network"
  compartment_ocid = var.compartment_ocid
  vcn_id           = var.vcn_id
}

module "images" {
  source           = "./data"
  compartment_ocid = var.compartment_ocid
}