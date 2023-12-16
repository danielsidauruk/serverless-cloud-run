resource "google_cloudbuild_trigger" "manual-trigger" {
  name        = var.cloudbuild_name
  description = "Trigger for Cloud Build"

  source_to_build {
    uri       = var.github_url
    ref       = "refs/heads/main"
    repo_type = "GITHUB"
  }

  git_file_source {
    path      = "cloudbuild.yaml"
    uri       = var.github_url
    revision  = "refs/heads/main"
    repo_type = "GITHUB"
  }

  approval_config {
     approval_required = true 
  }
}