# AWS IAM Role for EC2 Instances
resource "aws_iam_role" "ecs_instance_role" {
  name = var.ec2_role_name

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = "sts:AssumeRole",
        Effect = "Allow",
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      }
    ]
  })
}

# AWS IAM Instance Profile for EC2 Instances
resource "aws_iam_instance_profile" "ecs_instance_profile" {
  name = var.instance_profile_name
  role = aws_iam_role.ecs_instance_role.name
}

