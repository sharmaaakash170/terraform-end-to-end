resource "google_spanner_instance" "gc-instance-tf" {
  name = "gc-instance-tf"
  config = "regional-us-central1"
  display_name = "spanner-instance-tf"
  num_nodes = 2

}

resource "google_spanner_database" "gc-db-tf" {
  name = "gc-db-tf"
  instance = google_spanner_instance.gc-instance-tf.name
  deletion_protection = false
}