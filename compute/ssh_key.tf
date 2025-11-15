resource "tls_private_key" "ssh" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "local_file" "private_key" {
  filename = "id_rsa"
  content  = tls_private_key.ssh.private_key_pem
}

resource "local_file" "public_key" {
  filename = "id_rsa.pub"
  content  = tls_private_key.ssh.public_key_openssh
}

output "public_ssh_key" {
  value = tls_private_key.ssh.public_key_openssh
}