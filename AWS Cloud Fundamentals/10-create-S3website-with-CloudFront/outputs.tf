output "cloudfront_distribution_id" {
  value = aws_cloudfront_distribution.distribution.id
}

output "cloudfront_distribution_domain_name" {
  value = aws_cloudfront_distribution.distribution.domain_name
}

output "s3_bucket_name" {
  value = aws_s3_bucket.bucket.bucket
}

output "s3_bucket_website_endpoint" {
  value = "http://${aws_s3_bucket.bucket.bucket}.s3-website-${aws_s3_bucket.bucket.region}.amazonaws.com"
}

