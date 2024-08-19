import logging

def lambda_handler(event, context):
    """
    This function is the entry point for the Lambda function.
    It handles the incoming event and context.

    :param event: The event data passed to the Lambda function.
                  Typically a dictionary containing key-value pairs.
    :param context: The runtime information of the Lambda function.
                    Contains methods and properties that provide information
                    about the invocation, function, and execution environment.

    :return: A dictionary with the status code and a response body.
    """
    # Configure logging
    logging.basicConfig(level=logging.INFO)

    # Log the event data for debugging
    logging.info("value1=%s", event.get('key1'))
    logging.info("value2=%s", event.get('key2'))
    logging.info("value3=%s", event.get('key3'))

    # Define the response
    response = {
        'statusCode': 200,
        'body': 'Hello, Terraform! Your Lambda function executed successfully.'
    }

    # Return the response or the specific key if required
    return response  # or return event.get('key1') if that's what you want to return

