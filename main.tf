terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "8.7.0"
    }
  }
}

provider "google" {
  # Configuration options
  project = "project-4f598fab-e29b-4600-b49"
  region  = "africa-south1"
}

resource "google_storage_bucket" "demo-bucket" {
  name          = "project-4f598fab-e29b-4600-b49-terra-bucket"
  location      = "africa-south1"
  force_destroy = true

  uniform_bucket_level_access = true

  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}