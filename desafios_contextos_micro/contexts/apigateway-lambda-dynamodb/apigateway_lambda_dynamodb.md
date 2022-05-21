## Para fazer uma requisicao de teste para o Api Gateway

> curl -X GET http://localhost:4566/restapis/{api_id}/{stage}/_user_request_/{path}

Example:

> curl -X GET http://localhost:4566/restapis/6sywd70t7a/api/_user_request_/test


## Links de referencia para os desafios

https://github.com/aws-samples/serverless-patterns/tree/main/apigw-lambda-dynamodb-terraform

https://serverlessland.com/patterns/apigw-lambda-dynamodb-sam-java

https://serverlessland.com/patterns/apigw-lambda-dynamodb-terraform