import boto3

import json
import os
import time
import uuid

dynamodb_endpoint = 'http://%s:4566' % os.environ['LOCALSTACK_HOSTNAME']

dynamodb = boto3.resource('dynamodb', endpoint_url=dynamodb_endpoint)

#reference
# https://github.com/localstack/serverless-python-rest-api-with-dynamodb/blob/main/todos/create.py


def lambda_handler(event, context):

    timestamp = str(time.time())

    challenge_table = dynamodb.Table('ChallengeTableOne')

    item = {
        'partition_key': str(uuid.uuid1()),
        'sort_key': '1',
        'createdAt': timestamp
    }

    challenge_table.put_item(Item=item)

    response = {
        "statusCode": 200,
        "body": json.dumps(item)
    }

    return response
