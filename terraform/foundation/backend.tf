terraform {
  backend "gcs" {
    bucket = "serverless-cloud-run-408313-tf-state"
    prefix = "tf-state-dir/foundation"
  }
}
