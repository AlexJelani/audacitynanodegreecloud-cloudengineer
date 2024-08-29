output "cloudfront_domain" {
  description = "The CloudFront domain name to access the website"
  value       = aws_cloudfront_distribution.website_cdn.domain_name
}

output "s3_bucket_name" {
  description = "The name of the S3 bucket"
  value       = aws_s3_bucket.website_bucket.bucket
}