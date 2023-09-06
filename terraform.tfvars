ec2_role_name = "ECSInstanceRole"
instance_profile_name = "ECSInstanceProfile"

compute_environment_name = "sample"
min_vcpus = 0
max_vcpus = 64
desired_vcpus = 4
instance_type = ["m4.large"]
subnets = ["subnet-07e214b3d8386616f", "subnet-0ed33491acee66e44"]
security_group_ids = ["sg-0e8abbd055898a2f2"]
job_queue_name = "sample-batch-queue"
compute_environment_arn = "aws_batch_compute_environment.sample.arn"
job_queue_priority = 1
job_definition_name = "json_to_csv_conversion"
#container_properties = <<EOT
#{
#  "image": "217994357557.dkr.ecr.us-west-1.amazonaws.com/myrepo:latest",
#  "vcpus": 1,
#  "memory": 1024,
#  "jobRoleArn": "aws_iam_role.batch_job_role.arn",
#  "volumes": [
#    {
#      "host": {
#        "sourcePath": "/var/run/docker.sock"
#      },
#      "name": "docker_socket"
#    }
#  ],
#  "mountPoints": [
#    {
#      "containerPath": "/var/run/docker.sock",
#      "readOnly": false,
#      "sourceVolume": "docker_socket"
#    }
#  ],
#  "environment": [
#    {
#      "name": "S3_BUCKET_NAME",
#      "value": "mybucketonefinal"
#    },
#    {
#      "name": "ANOTHER_ENV_VAR",
#      "value": "its_value"
#    }
#  ]
#}
#EOT
service_role_name = "BatchServiceRole"
job_role_name = "BatchJobRole"
policy_name = "BatchJobPermissions"
s3_bucket_arn = "aws_s3_bucket.bucket.arn"
lambda_filename = "lambda.zip"
lambda_function_name = "myfunction"
lambda_function_arn = "aws_lambda_function.func.arn"
s3_bucket_arn_lambda = "aws_s3_bucket.bucket.arn"
#bucket_name = "mybucketonefinal"
sns_lambda_function_name = "my_lambda"
sns_lambda_runtime = "python3.9"
sns_lambda_role_name = "lambda_role"
sns_topic_name = "my_topic"
