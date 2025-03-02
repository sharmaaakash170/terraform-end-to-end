resource "google_storage_bucket" "gc-storage-function" {
  name = "gc-storage-function"
  location = "us-central1"
}

resource "google_storage_bucket_object" "gc-storage-function-object" {
  name = "gc-storage-function-object"
  source = "downloads.zip"
  bucket = google_storage_bucket.gc-storage-function.name
}

resource "google_cloudfunctions_function" "gc-function-tf" {
  name = "gc-function-tf"
  runtime = "nodejs16"
  available_memory_mb = 128
  entry_point = "helloHttptf"
  min_instances = 1
  max_instances = 10
  source_archive_bucket = google_storage_bucket.gc-storage-function.name
  source_archive_object = google_storage_bucket_object.gc-storage-function-object.name
  trigger_http = true
  timeout = 300
  region = "us-central1"
}

resource "google_cloudfunctions_function_iam_member" "invoker" {
  member = "allUsers"
  cloud_function = google_cloudfunctions_function.gc-function-tf.name
  role = "roles/cloudfunctions.invoker"
}