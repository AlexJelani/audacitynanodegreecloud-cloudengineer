provider "aws" {
  profile = "myAdmin"
  region  = "us-east-1"
}

# Create an additional EBS volume
resource "aws_ebs_volume" "example_volume" {
  availability_zone = "us-east-1a"  # Replace with your instance's AZ if different
  size              = 8  # 8 GB, free-tier eligible size
  type              = "gp2"

  tags = {
    Name = "example_volume"
  }
}

# Attach the EBS volume to the existing EC2 instance
resource "aws_volume_attachment" "example_attachment" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.example_volume.id
  instance_id = "i-0d6fcee1f9604f51a"  # Your existing instance ID
}
