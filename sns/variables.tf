variable "sns_lambda_function_name" {
  description = "Name of the Lambda function"
  type        = string
  default     = "my_lambda"  
}

variable "sns_lambda_runtime" {
  description = "Runtime for the Lambda function"
  type        = string
  default     = "python3.9"  
}

variable "sns_lambda_role_name" {
  description = "Name of the IAM Role for Lambda"
  type        = string
  default     = "lambda_role" 
}

variable "sns_topic_name" {
  description = "Name of the SNS topic"
  type        = string
  default     = "my_topic" 
}

