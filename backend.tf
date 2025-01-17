terraform {
  backend "s3" {
    bucket         = "terraform-state-bucket"
    key            = "envs/${terraform.workspace}/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
  }
}
