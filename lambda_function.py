import logging
import boto3

logger = logging.getLogger()
logger.setLevel(logging.INFO)

client = boto3.client('lambda')


def handler(event, context):
    logger.info(client)
    return {'message': 'hello lambda'}
