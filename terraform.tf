terraform {
  required_version = "~> 0.12.24"

  backend "s3" {
    key = "github"

    bucket         = "el-terraform-states"
    dynamodb_table = "el-terraform-locks"
  }
}

provider "github" {
  version = "~> 2.3.0"
}
