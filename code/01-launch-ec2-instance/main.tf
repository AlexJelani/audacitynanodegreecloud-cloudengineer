provider "aws" {
  profile = "audacitycloud-developer"
  region  = "us-east-1"
}

# Create a Security Group for the EC2 instance
resource "aws_security_group" "example_sg" {
  name        = "example_sg"
  description = "Security group for example EC2 instance"

  # Inbound Rules
  ingress {
    description = "Allow SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Allow HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Outbound Rules
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"  # All traffic
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "example_sg"
  }
}

# Create an EC2 instance
resource "aws_instance" "example" {
  ami           = "ami-053b0d53c279acc90"  # Ubuntu Server 22.04 LTS (HVM), SSD Volume Type.
  instance_type = "t2.micro"               # Free-tier eligible instance type
  vpc_security_group_ids = [aws_security_group.example_sg.id]  # Attach Security Group

  tags = {
    Name = "example_instance"
  }
}
