variable "compute_environment_name" {
  description = "Name of the Batch Compute Environment"
}

variable "min_vcpus" {
  description = "Minimum vCPUs for the compute environment"
}

variable "max_vcpus" {
  description = "Maximum vCPUs for the compute environment"
}

variable "desired_vcpus" {
  description = "Desired vCPUs for the compute environment"
}

variable "instance_type" {
  description = "Instance type for the compute environment"
}

variable "subnets" {
  description = "List of subnets for the compute environment"
  type        = list(string)
}

variable "security_group_ids" {
  description = "List of security group IDs for the compute environment"
  type        = list(string)
}
variable "job_queue_name" {
  description = "Name of the Batch Job Queue"
}

variable "compute_environment_arn" {
  description = "ARN of the Batch Compute Environment"
}

variable "job_queue_priority" {
  description = "Priority of the Batch Job Queue"
}
variable "job_definition_name" {
  description = "Name of the Batch Job Definition"
}

variable "container_properties" {
  description = "Container properties for the Batch Job Definition"
}
variable "service_role_name" {
  description = "Name of the IAM Role for Batch Service"
}
variable "job_role_name" {
  description = "Name of the IAM Role for Batch Job"
}
variable "policy_name" {
  description = "Name of the IAM Policy for Batch Job Permissions"
}

variable "s3_bucket_arn" {
  description = "ARN of the S3 bucket for permissions"
}

