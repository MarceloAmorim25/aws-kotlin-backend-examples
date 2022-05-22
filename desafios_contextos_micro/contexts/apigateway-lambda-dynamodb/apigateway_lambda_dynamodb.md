## Para fazer uma requisicao de teste para o Api Gateway

> curl -X GET http://localhost:4566/restapis/{api_id}/{stage}/_user_request_/{path}

Example:

> curl -X GET http://localhost:4566/restapis/6sywd70t7a/api/_user_request_/test


## Setup da lambda function

Deve ser gerado o arquivo zip com nome lambda.zip.

> zip lambda.zip lambda_function.py

## Para verificar se o recurso foi gravado no dynamoDB

AWS Doc: https://docs.aws.amazon.com/cli/latest/reference/dynamodb/get-item.html

aws dynamodb get-item \
    --table-name ChallengeTableOne \
    --key file://key.json \
    --return-consumed-capacity TOTAL \
    --endpoint-url=http://localhost:4566


## Links de referencia para os desafios

https://github.com/aws-samples/serverless-patterns/tree/main/apigw-lambda-dynamodb-terraform

https://serverlessland.com/patterns/apigw-lambda-dynamodb-sam-java

https://serverlessland.com/patterns/apigw-lambda-dynamodb-terraform