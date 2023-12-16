terraform {
  backend "gcs" {
    bucket = "serverless-cloud-run-1-tf-state"
    prefix = "main"
  }
}
