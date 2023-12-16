data "terraform_remote_state" "foundation" {
  backend = "gcs"
  config = {
    bucket = "serverless-cloud-run-408313-tf-state"
    prefix = "foundation"
  }
}
