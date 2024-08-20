import json

def lambda_handler(event, context):
    # Ensure 'key1' exists in the event
    if 'key1' in event:
        message = 'Hello ' + event['key1'] + ' from Lambda!'
    else:
        message = 'Hello from Lambda!'

    # Return the response in JSON format
    return {
        'statusCode': 200,
        'body': json.dumps(message)
    }

