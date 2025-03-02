resource "google_artifact_registry_repository" "gc-registory-tf" {
  project       = "terraform-project-452412"  
  format        = "DOCKER"
  location      = "asia-south1"
  repository_id = "gc-registory-tf"
}

data "google_iam_policy" "gc-registory-allUser" {
  binding {
    role = "roles/artifactregistry.reader"
    members = [
      "serviceAccount:terraform-sa@terraform-project-452412.iam.gserviceaccount.com",  
    ]
  }
}

resource "google_artifact_registry_repository_iam_policy" "gc-registory-iam-policy" {
  project     = "terraform-project-452412"  
  location    = "asia-south1"              
  repository  = google_artifact_registry_repository.gc-registory-tf.repository_id
  policy_data = data.google_iam_policy.gc-registory-allUser.policy_data
}
