# Configure the AWS provider
provider "aws" {
  region = "us-east-1"  # Replace with your preferred AWS region
  profile = "myAdmin"  # Replace with your preferred AWS profile
}

# Find the most recent Ubuntu AMI
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-*20*-amd64-server-*"]
  }

  filter {
    name = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

# Retrieve the default VPC
data "aws_vpc" "default" {
  default = true
}

# Retrieve all subnets in the default VPC
data "aws_subnets" "default" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }
}

# Define the launch configuration
resource "aws_launch_configuration" "example" {
  image_id      = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"  # Free Tier eligible instance type

  lifecycle {
    create_before_destroy = true
  }
}

# Define the Auto Scaling Group
resource "aws_autoscaling_group" "example" {
  launch_configuration = aws_launch_configuration.example.id
  min_size             = 1
  max_size             = 1
  desired_capacity     = 1

  vpc_zone_identifier = data.aws_subnets.default.ids

  tag {
    key                 = "Name"
    value               = "example-auto-scaling-group-instance"
    propagate_at_launch = true
  }

  health_check_type          = "EC2"
  health_check_grace_period  = 300

  lifecycle {
    create_before_destroy = true
  }
}
