resource "google_cloud_run_service" "gcp-run-tf" {
  name = "gcp-run-tf"
  location = "us-central1"
  template {
    spec {
      containers {
        # image = "sharmaaakash170/basic-flask-app"
        image = "sharmaaakash170/flaskapp"
        ports {
          container_port = 5000
        }
        
      }
    }
  }
  
  traffic {
    revision_name = "gcp-run-tf-00002-qf9"
    percent = 50
  }
  traffic {
    revision_name = "gcp-run-tf-00001-lb4"
    percent = 50
  }
}

data "google_iam_policy" "gcp-iam" {
  binding {
    role = "roles/run.invoker"
    members = ["allUsers"]
  }
}

resource "google_cloud_run_service_iam_policy" "gcr-iam" {
  policy_data = data.google_iam_policy.gcp-iam.policy_data
  location = google_cloud_run_service.gcp-run-tf.location
  service = google_cloud_run_service.gcp-run-tf.name
}
