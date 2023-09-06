terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.27.0"
    }
  }
}

provider "aws" {
  region     = "us-west-1"
  #access_key = "AKIATFQLZ5M25CMCSTPW"
  #secret_key = "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"
}
