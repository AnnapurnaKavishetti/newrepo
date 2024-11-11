# AWS Provider Configuration
provider "aws" {
  region = "us-east-1"  # Set your preferred AWS region
}

# EC2 Instance Configuration
resource "aws_instance" "my_ec2" {
  ami           = "ami-0866a3c8686eaeeba"  # Replace with actual AMI ID
  instance_type = "t2.micro"              # Free-tier eligible instance type

  tags = {
    Name = "MyEC2Instance"
  }
}

# S3 Bucket Configuration
resource "aws_s3_bucket" "my_bucket" {
  bucket = "ani"  # Use a globally unique S3 bucket name
  acl    = "private"
}
