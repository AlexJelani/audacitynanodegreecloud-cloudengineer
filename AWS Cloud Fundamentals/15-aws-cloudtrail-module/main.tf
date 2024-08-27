provider "aws" {
  region = "us-east-1"  # Replace with your desired AWS region
}

module "cloudtrail_example_complete" {
  source  = "cloudposse/cloudtrail/aws//examples/complete"
  version = "0.24.0"

  # Required variables
  enable_log_file_validation    = true
  enable_logging                = true
  include_global_service_events = true
  is_multi_region_trail         = true
  is_organization_trail         = false  # Set to true if this is an AWS Organizations trail
  region                        = "us-east-1"  # Replace with your desired AWS region
}
