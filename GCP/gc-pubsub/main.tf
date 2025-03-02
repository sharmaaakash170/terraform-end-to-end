resource "google_pubsub_subscription" "gc-pubsub-tf" {
  name = "gc_pubsub_tf"
  topic = google_pubsub_topic.gc-topic-tf.name
}

resource "google_pubsub_topic" "gc-topic-tf" {
  name = "gc_topic_tf"
}