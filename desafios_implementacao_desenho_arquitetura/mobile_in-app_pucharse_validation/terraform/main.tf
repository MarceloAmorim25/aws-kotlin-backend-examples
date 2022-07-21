## conexão com a AWS

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  region     = "sa-east-1"
}

## tabelas dynamo-db

resource "aws_dynamodb_table" "tabela-jogador" {
  name           = "Jogador"
  billing_mode   = "PROVISIONED"
  read_capacity  = 20
  write_capacity = 20
  hash_key       = "pk"
  range_key      = "sk"

  attribute {
    name = "pk"
    type = "S"
  }

  attribute {
    name = "sk"
    type = "S"
  }

  ttl {
    attribute_name = "TimeToExist"
    enabled        = false
  }

}

resource "aws_dynamodb_table" "tabela-transacoes" {
  name           = "Transacoes"
  billing_mode   = "PROVISIONED"
  read_capacity  = 20
  write_capacity = 20
  hash_key       = "pk"
  range_key      = "sk"

  attribute {
    name = "pk"
    type = "S"
  }

  attribute {
    name = "sk"
    type = "S"
  }

  ttl {
    attribute_name = "TimeToExist"
    enabled        = false
  }

}

## funcoes lambda

## api gateway

resource "aws_apigatewayv2_api" "gateway-entrada-cliente" {
  name          = "gateway-entrada-cliente-http-api"
  protocol_type = "HTTP"
}

resource "aws_apigatewayv2_api" "gateway-integracao-lojas" {
  name          = "gateway-integracao-lojas-http-api"
  protocol_type = "HTTP"
}

## SQS

resource "aws_sqs_queue" "fila_callback_ressarcimento" {
  name                      = "fila_callback_ressarcimento"
  delay_seconds             = 90
  max_message_size          = 2048
  message_retention_seconds = 86400
  receive_wait_time_seconds = 10

}