variable "region" {
  type        = string
  description = "OCI region"
}

variable "tenancy_ocid" {
  type        = string
  description = "Tenancy OCID"
}

variable "user_ocid" {
  type        = string
  description = "User OCID usado para autenticação"
}

variable "private_key_path" {
  type        = string
  description = "Caminho da chave privada usada na API Key"
}

variable "fingerprint" {
  type        = string
  description = "Fingerprint da API Key"
}

variable "compartment_ocid" {
  type = string
}

variable "subnet_ocid" {
  type = string
}

variable "availability_domain" {
  type = string
}

variable "vcn_id" {
  type = string
}
