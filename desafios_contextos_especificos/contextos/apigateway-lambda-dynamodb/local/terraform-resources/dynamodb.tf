resource "aws_dynamodb_table" "challenge-table-one" {
  name           = "ChallengeTableOne"
  billing_mode   = "PROVISIONED"
  read_capacity  = 20
  write_capacity = 20
  hash_key       = "partition_key"
  range_key      = "sort_key"

  attribute {
    name = "partition_key"
    type = "S"
  }

  attribute {
    name = "sort_key"
    type = "S"
  }

  tags = {
    Name        = "dynamodb-table-one"
    Environment = "dev"
  }
  
}