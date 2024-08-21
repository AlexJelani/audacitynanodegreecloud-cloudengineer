# Output variable: S3 bucket
output "s3_bucket_arn" {
  value = aws_s3_bucket.sample_file_bucket.arn
}
