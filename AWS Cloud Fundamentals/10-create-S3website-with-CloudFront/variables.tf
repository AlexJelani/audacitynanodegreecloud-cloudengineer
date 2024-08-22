variable "aws_profile" {
  description = "The AWS CLI profile to use"
  default     = "myAdmin"
}
variable "aws_region" {
  description = "The AWS region to create resources in"
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "The name of the S3 bucket"
  default     = "my-cloudfront-s3-bucket-udacity"
}

variable "cloudfront_distribution_comment" {
  description = "Comment for the CloudFront distribution"
  default     = "CloudFront distribution with S3 origin"
}
