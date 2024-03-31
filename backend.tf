# store the terraform state file in s3 and lock with dynamodb
terraform {
  backend "s3" {
    bucket         = "barefootcyber-terraform-state"
    key            = "vpc-init-us-east-2-state-file/ebs-test.tfstate"
    region         = "us-east-2"
    profile        = "default"
    dynamodb_table = "vpc-init-state-lock"
  }
}