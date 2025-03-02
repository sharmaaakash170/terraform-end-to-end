resource "google_bigtable_instance" "gc-bigtable-tf" {
  name =  "gc-bigtable-tf"
  deletion_protection = false 
  cluster {
    cluster_id = "gc-bigtable-tf-from-script"
    num_nodes = 1
    storage_type = "SSD"
  }
  labels = {
    "env" = "dev" 
  }
}

resource "google_bigtable_table" "gc-bigtable-tf-table" {
  name = "gc-bigtable-tf-table"
  instance_name = google_bigtable_instance.gc-bigtable-tf.name 
}