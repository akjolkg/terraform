terraform {
    required_version = "1.4.5"
  backend "s3" {
    region = "us-east-1"
    bucket = "omorov-terraform"
    key = "batch8-first-lesson-state-file"
    dynamodb_table = "handson1-locking"
  }
}
