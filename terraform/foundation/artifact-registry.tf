resource "google_artifact_registry_repository" "this" {
  for_each      = toset(var.registrys_id)
  location      = var.region
  repository_id = each.key
  description   = "Artifact Registry for Dockerize apps"
  format        = "DOCKER"
}