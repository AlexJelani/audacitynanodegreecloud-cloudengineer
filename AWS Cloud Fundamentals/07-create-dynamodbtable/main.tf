# Configure the AWS provider
provider "aws" {
  region  = "us-east-1"
  profile = "myAdmin"
}

# Create a DynamoDB table
resource "aws_dynamodb_table" "music" {
  name           = "Music"
  billing_mode   = "PROVISIONED" # Change to "PAY_PER_REQUEST" if you prefer on-demand
  read_capacity  = 5
  write_capacity = 5

  # Define the partition key
  hash_key = "Artist_Id"

  # Define attribute types
  attribute {
    name = "Artist_Id"
    type = "S" # S stands for String
  }

  # Default settings for free tier
  # No need to set any specific settings here for free tier use.
}

# Create a DynamoDB item with dummy data
resource "aws_dynamodb_table_item" "example" {
  table_name = aws_dynamodb_table.music.name
  hash_key   = "Artist_Id"

  item = <<ITEM
{
  "Artist_Id": {"S": "001"},
  "Artist": {"S": "The Beatles"},
  "Song_Title": {"S": "Hey Jude"}
}
ITEM
}
