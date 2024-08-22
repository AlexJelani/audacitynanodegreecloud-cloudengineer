# Configure the AWS provider
provider "aws" {
  region  = "us-east-1"
  profile = "myAdmin"
}

# Create a security group for the RDS instance
resource "aws_security_group" "rds_sg" {
  name        = "rds_security_group"
  description = "Security group for RDS instance"

  # Allow inbound traffic from your IP address
  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Change this to your IP range for better security
  }

  # Allow all outbound traffic
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Create a MySQL RDS instance
resource "aws_db_instance" "mysql" {
  allocated_storage    = 20                     # Minimum storage allowed for free tier
  storage_type         = "gp2"                  # General Purpose SSD
  engine               = "mysql"
  engine_version       = "8.0"                  # Latest MySQL version for free tier
  instance_class       = "db.t3.micro"          # Free tier eligible instance type
  db_name                 = "database1"            # Database name
  username             = "admin"                # Master username
  password             = "yourpassword"         # Replace with a secure password
  parameter_group_name = "default.mysql8.0"     # Default parameter group for MySQL 8.0
  skip_final_snapshot  = true                   # Skip snapshot on deletion
  publicly_accessible  = true                   # Public access (be cautious with this setting)
  vpc_security_group_ids = [aws_security_group.rds_sg.id]  # Attach security group

  # Backup and maintenance settings
  backup_retention_period = 7                   # Backup retention in days
  backup_window           = "03:00-04:00"       # Daily backup window
  maintenance_window      = "Mon:04:00-Mon:05:00" # Weekly maintenance window

  # Deletion protection (optional)
  deletion_protection = false
}
