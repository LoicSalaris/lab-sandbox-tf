# Provider configuration: plugin that Terraform uses to
# translate the API interactions with the AWS service.

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}