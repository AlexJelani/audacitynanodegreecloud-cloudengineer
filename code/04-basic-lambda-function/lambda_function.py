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
    # Log the event data for debugging
    print("Received event:", event)

    # Define the response
    response = {
        'statusCode': 200,
        'body': 'Hello, Terraform! Your Lambda function executed successfully.'
    }

    # Return the response
    return response
