# Provider Configuration
provider "aws" {
  region = "us-east-1"
  profile = "myAdmin"
}

# Data Sources
data "aws_vpc" "default" {
  default = true
}

data "aws_subnets" "default_subnets" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }
}

# Load Balancer Resource
resource "aws_lb" "my_load_balancer" {
  name               = var.load_balancer_name
  internal           = false
  load_balancer_type = "application"
  security_groups    = var.security_group_ids
  subnets            = length(var.subnet_ids) > 0 ? var.subnet_ids : data.aws_subnets.default_subnets.ids

  enable_deletion_protection = false
  enable_http2              = true

  # Correcting the idle_timeout argument
  idle_timeout = 60  # Set the idle timeout in seconds
}

# Load Balancer Listener Resource
resource "aws_lb_listener" "my_listener" {
  load_balancer_arn = aws_lb.my_load_balancer.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type = "fixed-response"

    fixed_response {
      content_type = "text/plain"
      message_body = "Hello, world"
      status_code  = "200"
    }
  }
}
