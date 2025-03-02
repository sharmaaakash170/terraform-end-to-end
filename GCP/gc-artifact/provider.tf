terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "6.23.0"
    }
  }
}

provider "google" {
  # Configuration options"
  project = "terraform-project-452412"
  region = "us-central1"
  zone = "us-central1-a"
  credentials = "../gcp-key.json"
}