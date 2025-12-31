terraform {
  backend "s3" {
    # for prod bucket = "shipium-terraform-state"
    # for stage bucket = "shipium-terraform-state-965822459923"
    bucket = "shipium-terraform-state-965822459923"
    key    = "aws/shipium-stage/sample-ec2withoutpublic"
    region = "us-west-2"
  }
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.100.0"
    }
  }
}

locals {
  account = var.account
}

provider "aws" {
  region = "us-west-2"

  default_tags {
    tags = {
      active-active = true
      account       = local.account
      environment   = "stage"
      managed-by    = "terraform"
      product       = "poc-sample-aegis"
      team          = "poc-uiux"
      repository    = "infrastructure/cloud-stack"
    }
  }
}

