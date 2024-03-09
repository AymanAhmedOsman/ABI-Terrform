#-------------------------------- private key ssh ---------------------
resource "tls_private_key" "ABI_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "ABI_ssh_key" {
  key_name   = "API_test_key"
  public_key = tls_private_key.ABI_key.public_key_openssh
  
  
}

