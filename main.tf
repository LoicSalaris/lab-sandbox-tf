terraform {

  cloud {
    organization = "labs-training"
    workspaces {
      name = "lab-sandbox-tf"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.0.1"
    }
  }
  required_version = ">= 1.2.0"

}


resource "random_pet" "sg" {}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "app" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type

  root_block_device {
    encrypted = true
  }

  subnet_id = flatten(module.networking.public_subnets_id)[0]
  key_name  = var.key_name_app

  vpc_security_group_ids = [module.networking.allow_http_sg_id]
  tags = {
    Name = var.instance_name
  }
  user_data = file("./scripts/setup.sh")
}

# PostgreSQL DB Instance
resource "aws_instance" "pgsql" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type

  root_block_device {
    encrypted = true
  }

  key_name = var.key_name_app
  user_data = templatefile("./scripts/postgresql/install_postgres.sh", {
    pg_hba_file = templatefile("./scripts/postgresql/pg_hba.conf", { allowed_ip = "0.0.0.0/0" }),
  })

  subnet_id              = flatten(module.networking.private_subnets_id)[0]
  vpc_security_group_ids = [module.networking.allow_postgresql_sg_id]
  tags = {
    Name = var.instance_db_name
  }
}
