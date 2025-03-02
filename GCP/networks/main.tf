resource "google_compute_network" "auto-vpc-tf" {
  name = "auto-vpc-tf"
  auto_create_subnetworks = true
}

resource "google_compute_network" "custom-vpc-tf" {
  name = "custom-vpc-tf"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet-singapore" {
  name = "subnet-singapre"
  network = google_compute_network.custom-vpc-tf.id
  region = "asia-southeast1"
  ip_cidr_range = "10.1.0.0/24"
  private_ip_google_access = true
}

resource "google_compute_subnetwork" "subnet-mumbai" {
  name = "subnet-mumbai"
  network = google_compute_network.custom-vpc-tf.id
  ip_cidr_range = "10.2.0.0/24"
  private_ip_google_access = true
  region = "asia-south1"
}

resource "google_compute_firewall" "custom-firewall-1" {
  name = "custom-firewall-1"
  network = google_compute_network.custom-vpc-tf.id
  allow {
    protocol = "icmp"
  }
  allow {
    protocol = "tcp"
    ports = ["22"]
  }
  source_ranges = [ "0.0.0.0/0" ]
}

output "auto" {
  value = google_compute_network.auto-vpc-tf.id
}

output "custom" {
  value = google_compute_network.custom-vpc-tf.id
}