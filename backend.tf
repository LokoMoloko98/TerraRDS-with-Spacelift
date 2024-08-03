# store the terraform state file in s3 and lock with dynamodb
terraform {
  backend "s3" {
    bucket         = "mol-remote-states-store"
    key            = "terrards/state.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-lock"
  }
}