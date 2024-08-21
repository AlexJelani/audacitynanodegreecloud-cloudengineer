# Configure the AWS provider
provider "aws" {
  region  = "us-east-1"
  profile = "myAdmin"
}

# Create the DynamoDB table
resource "aws_dynamodb_table" "course" {
  name         = "Course"
  billing_mode = "PAY_PER_REQUEST" # Free tier for on-demand pricing

  # Define the partition key
  hash_key = "Name"

  # Define attribute types
  attribute {
    name = "Name"
    type = "S" # S stands for String
  }
}

# Add items to the DynamoDB table

# Item 1
resource "aws_dynamodb_table_item" "item1" {
  table_name = aws_dynamodb_table.course.name
  hash_key   = "Name"

  item = <<ITEM
{
  "Name": {"S": "Course1"},
  "Teacher": {"S": "Udacity Instructor"}
}
ITEM
}

# Item 2
resource "aws_dynamodb_table_item" "item2" {
  table_name = aws_dynamodb_table.course.name
  hash_key   = "Name"

  item = <<ITEM
{
  "Name": {"S": "Course2"},
  "Teacher": {"S": "Khan Academy Instructor"}
}
ITEM
}

# Item 3
resource "aws_dynamodb_table_item" "item3" {
  table_name = aws_dynamodb_table.course.name
  hash_key   = "Name"

  item = <<ITEM
{
  "Name": {"S": "Course3"},
  "Teacher": {"S": "Coursera Instructor"}
}
ITEM
}

# Item 4
resource "aws_dynamodb_table_item" "item4" {
  table_name = aws_dynamodb_table.course.name
  hash_key   = "Name"

  item = <<ITEM
{
  "Name": {"S": "Course4"},
  "Teacher": {"S": "edX Instructor"}
}
ITEM
}

# Item 5
resource "aws_dynamodb_table_item" "item5" {
  table_name = aws_dynamodb_table.course.name
  hash_key   = "Name"

  item = <<ITEM
{
  "Name": {"S": "Course5"},
  "Teacher": {"S": "LinkedIn Learning Instructor"}
}
ITEM
}

# Item 6
resource "aws_dynamodb_table_item" "item6" {
  table_name = aws_dynamodb_table.course.name
  hash_key   = "Name"

  item = <<ITEM
{
  "Name": {"S": "Course6"},
  "Teacher": {"S": "Pluralsight Instructor"}
}
ITEM
}
