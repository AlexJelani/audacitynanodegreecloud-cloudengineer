provider "aws" {
  region = "us-east-1"
  profile = "myAdmin"
}

resource "aws_iam_role" "lambda_role" {
  name = "lambda_role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = "sts:AssumeRole",
        Effect = "Allow",
        Principal = {
          Service = "lambda.amazonaws.com"
        }
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lambda_policy_attachment" {
  role       = aws_iam_role.lambda_role.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}

resource "aws_lambda_function" "my_first_lambda_event" {
  function_name = "my_first_lambda_event"
  role          = aws_iam_role.lambda_role.arn
  handler       = "lambda_function.lambda_handler"
  runtime       = "python3.8"

  filename      = "lambda_function.zip"

  source_code_hash = filebase64sha256("lambda_function.zip")
}

resource "aws_lambda_invocation" "test_event" {
  function_name = aws_lambda_function.my_first_lambda_event.function_name
  input         = jsonencode({
    "key1" = "value1"
  })

  depends_on = [aws_lambda_function.my_first_lambda_event]
}

