variable "subnet_ocid" {
  type        = string
  description = "OCID da subnet onde os recursos serão criados"
}

variable "compartment_ocid" {
  type        = string
  description = "OCID do compartment onde os recursos serão criados"
}

variable "region" {
  type        = string
  description = "Região OCI"
}

variable "availability_domain" {
  type        = string
  description = "Availability Domain OCI (ex: CoKB:SA-VINHEDO-1-AD-1)"
}

variable "vcn_id" {
  type        = string
  description = "OCID da VCN a ser usada pela rede"
}