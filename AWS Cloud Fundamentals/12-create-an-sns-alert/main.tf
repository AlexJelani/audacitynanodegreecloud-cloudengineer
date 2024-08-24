provider "aws" {
  region = "us-east-1"
  profile = "myAdmin"
}

resource "aws_sns_topic" "example" {
  name = "example-topic"
}

resource "aws_sns_topic_subscription" "example" {
  topic_arn = aws_sns_topic.example.arn
  protocol  = "email"
  endpoint  = "jelanialexander82@gmail.com"
}

resource "aws_sns_topic_policy" "example" {
  arn = aws_sns_topic.example.arn

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = "*"
        Action = "sns:Publish"
        Resource = aws_sns_topic.example.arn
      }
    ]
  })
}

output "sns_topic_arn" {
  value = aws_sns_topic.example.arn
}

# aws sns publish \
# --topic-arn "arn:aws:sns:us-east-1:129752752803:example-topic" \
# --subject "Wishes" \
# --message file://message.txt \
# --message-attributes '{"Occasion":{"DataType":"String","StringValue":"Graduation"}}' \
# --profile myAdmin
