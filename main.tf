resource "aws_dynamodb_table" "default" {
  count = var.enabled ? 1 : 0
  name = var.name
  hash_key = var.hash_key
  billing_mode = var.billing_mode
  read_capacity = var.read_capacity
  write_capacity = var.write_capacity

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name = "DynamoDB TF State lock table"
  }
}
