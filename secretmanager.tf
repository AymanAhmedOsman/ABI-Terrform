#------------------------------------ Secret Manager ---------------------

resource "aws_secretsmanager_secret" "ABI_ssh_private_key_secret" {
  name = "API_ssh_private_key_secret"
  recovery_window_in_days = 0
}

resource "aws_secretsmanager_secret_version" "API_ssh_private_key_secret_version" {
 secret_id = aws_secretsmanager_secret.ABI_ssh_private_key_secret.id
 secret_string = tls_private_key.ABI_key.public_key_pem 
   
#}
