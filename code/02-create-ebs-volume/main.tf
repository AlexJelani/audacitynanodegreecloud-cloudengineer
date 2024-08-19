provider "aws" {
  profile = "audacitycloud-developer"
  region  = "us-east-1"
}

# Define the existing EC2 instance
resource "aws_instance" "example" {
  # ... (instance configuration)
}

# Create an additional EBS volume
resource "aws_ebs_volume" "example_volume" {
  availability_zone = aws_instance.example.availability_zone
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
  instance_id = "i-0d6fcee1f9604f51a"  # Corrected instance ID
}



