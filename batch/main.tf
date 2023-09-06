# AWS Batch Compute Environment
resource "aws_batch_compute_environment" "sample" {
  compute_environment_name = var.compute_environment_name
  service_role             = aws_iam_role.batch_service_role.arn
  type                     = "MANAGED"

  compute_resources {
    type                    = "EC2"
    min_vcpus               = var.min_vcpus
    max_vcpus               = var.max_vcpus
    desired_vcpus           = var.desired_vcpus
    instance_role           = aws_iam_instance_profile.ecs_instance_profile.arn
    instance_type           = var.instance_type
    subnets                 = var.subnets
    security_group_ids      = var.security_group_ids
  }
}

# AWS Batch Job Queue
resource "aws_batch_job_queue" "sample_queue" {
  name                 = var.job_queue_name
  compute_environments = [var.compute_environment_arn]
  priority             = var.job_queue_priority
  state                = "ENABLED"
}

# AWS Batch Job Definition
resource "aws_batch_job_definition" "json_to_csv_conversion" {
  name = var.job_definition_name
  type = "container"

  container_properties = var.container_properties
}

# AWS IAM Role for Batch Service
resource "aws_iam_role" "batch_service_role" {
  name = var.service_role_name

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = "sts:AssumeRole",
        Effect = "Allow",
        Principal = {
          Service = "batch.amazonaws.com"
        }
      }
    ]
  })
}

# AWS IAM Role for Batch Job
resource "aws_iam_role" "batch_job_role" {
  name = var.job_role_name

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = "sts:AssumeRole",
        Effect = "Allow",
        Principal = {
          Service = "ecs-tasks.amazonaws.com"
        }
      }
    ]
  })
}

# AWS IAM Policy for Batch Job Permissions
resource "aws_iam_policy" "batch_job_permissions" {
  name        = var.policy_name
  description = "Permissions required for batch jobs"

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action   = ["s3:GetObject", "s3:PutObject"],
        Effect   = "Allow",
        Resource = var.s3_bucket_arn
      }
    ]
  })
}

