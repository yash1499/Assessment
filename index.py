import boto3

def handler(event, context):
    client = boto3.client('batch')
    response = client.submit_job(
        jobName='jsonToCsvJob',
        jobQueue='sample_queue',
        jobDefinition='json_to_csv_conversion'  
    )
    return {
        'statusCode': 200,
        'body': response
    }
