
resource "random_password" "password" {
  length           = 16
  special          = true
  min_numeric = 1
  min_special = 1
  min_upper = 1
}

resource "aws_secretsmanager_secret" "password" {
  name                    = "db-password"
  recovery_window_in_days = 0
}

resource "aws_secretsmanager_secret_version" "password" {
  provider      = aws.euw1
  secret_id     = aws_secretsmanager_secret.password.id
  secret_string = random_password.password.result
}
