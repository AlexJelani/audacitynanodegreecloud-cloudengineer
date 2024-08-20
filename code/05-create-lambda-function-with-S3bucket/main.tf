provider "aws" {
  region  = "us-east-1"
  profile = "myAdmin"
}

resource "aws_s3_bucket" "awsbucket1916623" {
  bucket = "awsbucket1916623"
}

resource "aws_s3_bucket_public_access_block" "awsbucket1916623" {
  bucket                  = aws_s3_bucket.awsbucket1916623.bucket

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "example" {
  bucket = aws_s3_bucket.awsbucket1916623.bucket

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

resource "aws_lambda_function" "my_s3_trigger_function" {
  function_name = "my_s3_trigger_function"
  runtime       = "python3.9"
  handler       = "lambda_function.lambda_handler"
  role          = aws_iam_role.lambda_exec_role.arn

  # Updated path to the zip file
  filename         = "lambda_code/lambda_code.zip"
  source_code_hash = filebase64sha256("lambda_code/lambda_code.zip")

  environment {
    variables = {
      BUCKET = aws_s3_bucket.awsbucket1916623.bucket
    }
  }
}

resource "aws_iam_role" "lambda_exec_role" {
  name = "lambda_exec_role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [{
      Action = "sts:AssumeRole",
      Effect = "Allow",
      Principal = {
        Service = "lambda.amazonaws.com"
      }
    }]
  })
}

resource "aws_iam_role_policy" "lambda_exec_policy" {
  name = "lambda_exec_policy"
  role = aws_iam_role.lambda_exec_role.id
  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = [
          "logs:*",
          "s3:*",
          "lambda:InvokeFunction"  # Ensure this action is allowed
        ],
        Effect   = "Allow",
        Resource = "*"
      }
    ]
  })
}

resource "aws_lambda_permission" "allow_s3_invoke" {
  statement_id  = "AllowS3Invoke"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.my_s3_trigger_function.function_name
  principal     = "s3.amazonaws.com"
  source_arn    = "${aws_s3_bucket.awsbucket1916623.arn}/*"
}

