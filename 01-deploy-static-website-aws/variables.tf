variable "aws_region" {
  description = "The AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "The name of the S3 bucket to create"
  type        = string
  default     = "my-3428203-bucket"
}
variable "profile" {
  description = "The AWS profile to use"
  type = string
  default = "myAdmin"
}