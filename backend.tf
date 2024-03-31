# store the terraform state file in s3 and lock with dynamodb
terraform {
  backend "s3" {
    bucket         = "terrards-state"
    key            = "local_test.tfstate"
    region         = "us-east-1"
    profile        = "moloko-mokubedi"
    dynamodb_table = "terraform-state-lock"
  }
}