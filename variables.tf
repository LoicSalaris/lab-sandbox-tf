variable "aws_region" {
  type    = string
  default = "us-west-2"
}

variable "aws_profile" {
  default = "training"
}

variable "instance_name" {
  description = "Value of the name tag for the EC2 instance"
  type        = string
  default     = "ec2 lab"
}

variable "instance_db_name" {
  description = "Value of the name tag for the EC2 DB instance"
  type        = string
  default     = "rds lab"
}

variable "environment" {
    description = "Environment the resource is in"
    type        = string
    default     = "dev"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}
variable "public_subnets_cidr" {
  default = ["10.0.0.0/24"]
}
variable "private_subnets_cidr" {
  default = ["10.0.1.0/24"]
}
variable "instance_type" {
  type    = string
  default = "t2.micro"
}
variable "aws_availability_zone" {
  type    = string
  default = "us-west-2a"
}
