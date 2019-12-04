variable "enabled" {
  description = "create a dynamodb table"
  default = false
}

variable "name" {
  description = "name for the dynamodb"
  type = string
  default = ""
}

variable "hash_key" {
  description = "what's the hash key?"
  type = string
  default = "LockID"
}

variable "read_capacity" {
  description = "read capacity for the dynamodb"
  type = string
  default = "2"
}

variable "write_capacity" {
  description = "write capacity for the dynamodb"
  type = string
  default = "2"
}

variable "billing_mode" {
  description = "what's the billing mode"
  type = string
  default = ""
}
