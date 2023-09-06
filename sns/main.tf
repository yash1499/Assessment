# AWS Lambda Function
resource "aws_lambda_function" "example_lambda" {
  function_name = var.sns_lambda_function_name
  handler      = "index.handler"
  runtime      = var.sns_lambda_runtime
  filename     = "/root/assesment/lambda.zip"

  role = aws_iam_role.lambda_role.arn
}

# AWS IAM Role for Lambda
resource "aws_iam_role" "lambda_role" {
  name = var.sns_lambda_role_name

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = "sts:AssumeRole",
        Effect = "Allow",
        Principal = {
          Service = "lambda.amazonaws.com"
        }
      }
    ]
  })
}

# Allow Lambda to publish to the SNS topic
resource "aws_lambda_permission" "sns_permission" {
  statement_id  = "AllowExecutionToSNS"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.example_lambda.function_name
  principal     = "sns.amazonaws.com"

  source_arn = aws_sns_topic.example_topic.arn
}

# Define the SNS topic
resource "aws_sns_topic" "example_topic" {
  name = var.sns_topic_name
}

# Output the Lambda function's ARN
output "lambda_function_arn" {
  value = aws_lambda_function.example_lambda.arn
}

