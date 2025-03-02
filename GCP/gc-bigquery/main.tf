resource "google_bigquery_dataset" "gc-dataset-tf" {
  dataset_id = "gc0dataset0bigqery0tf"
}

resource "google_bigquery_table" "gc-dataset-table-tf" {
  dataset_id = google_bigquery_dataset.gc-dataset-tf.dataset_id
  table_id = "gc0dataset0bigquery0table0tf"
}