terraform {
  backend "s3" {
    bucket = "mybucket"
    key    = "terraform/app/statetf"
    region = "us-east-1"
  }
}
