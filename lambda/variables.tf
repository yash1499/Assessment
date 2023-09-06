variable "lambda_filename" {
  description = "Path to the Lambda deployment package (e.g., lambda.zip)"
}

variable "lambda_function_name" {
  description = "Name of the Lambda function"
}
variable "lambda_function_arn" {
  description = "ARN of the Lambda function"
}

variable "s3_bucket_arn_lambda" {
  description = "ARN of the S3 bucket"
}

