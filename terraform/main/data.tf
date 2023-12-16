data "terraform_remote_state" "foundation" {
  backend = "gcs"
  config = {
    bucket = "serverless-cloud-run-1-tf-state"
    prefix = "foundation"
  }
}
