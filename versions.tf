terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket         = "allianz-terraform"   # Replace with your bucket name
    key            = "vpc/terraform.tfstate"          # Path within the bucket
    region         = "us-east-1"                      # Replace with your region
  }
}
