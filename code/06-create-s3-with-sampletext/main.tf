# Configure the AWS provider
provider "aws" {
  region  = "us-east-1"
  profile = "myAdmin"
}

# Create a S3 bucket
resource "aws_s3_bucket" "sample_file_bucket" {
  bucket = var.bucket_name
}

# Enable encryption
resource "aws_s3_bucket_server_side_encryption_configuration" "example" {
  bucket = aws_s3_bucket.sample_file_bucket.bucket

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

# Upload a sample file
resource "aws_s3_object" "sample_file_bucket" {
  bucket = aws_s3_bucket.sample_file_bucket.bucket

  for_each = fileset("myapp/", "**/*.*")

  key          = each.value
  source       = "myapp/${each.value}"
  content_type = each.value
}
