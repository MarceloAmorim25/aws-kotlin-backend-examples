# Input variable definitions

variable "dynamodb_table" {
  description = "name of the ddb table"
  type = string
  default = "Movies"
  
}

variable "lambda_name" {
  description = "name of the lambda function"
  type = string
  default = "pattern-movies-post"
  
}

variable "apigw_name" {
  description = "name of the lambda function"
  type = string
  default = "apigw-http-lambda"
  
}