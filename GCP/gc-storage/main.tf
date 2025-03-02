resource "google_storage_bucket" "gcs_terraform" {
  name = "gcs-terraform-script-bucket"
  location = "us-central1"
  storage_class = "STANDARD"
  uniform_bucket_level_access = true
  public_access_prevention = "enforced"
  labels = {
    "test" = "terraform_bucket"
  }
  lifecycle_rule {
    action {
      type = "SetStorageClass"
      storage_class = "COLDLINE"
    }
    condition {
      age = 1
    }
  }
  versioning {
    enabled = true
  }
}

resource "google_storage_bucket_object" "upload_to_bucket" {
  bucket = google_storage_bucket.gcs_terraform.name
  name = "test_object"
  source = "gif.gif" 
}