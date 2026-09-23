terraform {
  backend "s3" {
    bucket = "sctp-tfstate-ce13"
    key    = "jl/32-workflow.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "workshop" {
  bucket_prefix = "jl-32-workflows"
}

