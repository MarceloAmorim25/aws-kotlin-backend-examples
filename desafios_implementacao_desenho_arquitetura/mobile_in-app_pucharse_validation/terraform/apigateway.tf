## api gateway

resource "aws_apigatewayv2_api" "gateway-entrada-cliente" {
  name          = "gateway-entrada-cliente-http-api"
  protocol_type = "HTTP"
}

resource "aws_apigatewayv2_api" "gateway-integracao-lojas" {
  name          = "gateway-integracao-lojas-http-api"
  protocol_type = "HTTP"
}