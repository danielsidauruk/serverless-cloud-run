variable "project_id" {
  type        = string
  description = "ID of the Google Project"
}

variable "network" {
  type = string
}

variable "region" {
  type        = string
  description = "Default Region"
  default     = "us-central1"
}

variable "zone" {
  type        = string
  description = "Default Zone"
  default     = "us-central1-a"
}

variable "subnets" {
  type = list(object({
    name          = string
    region        = string
    ip_cidr_range = string
  }))
}

variable "registrys_id" {
  type = list(string)
  description = "List of Registrys ID"
}

variable "services" {
  type = list(string)
}

variable "roles" {
  type = list(string)
}

variable "sa_name" {
  type = string
}

variable "vpc_connector_name" {
  type = string
}

variable "cloudbuild_name" {
  type = string
  description = "Name of Cloud Build Trigger"
}

variable "github_owner" {
  type = string
}

variable "github_name" {
  type = string
}

variable "github_branch" {
  type = string
  default = "^main$"
}

variable "github_url" {
  type = string
}