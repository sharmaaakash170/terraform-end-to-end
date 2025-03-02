resource "google_compute_instance" "gcp-instance" {
  name = "gcp-instance-tf"
  machine_type = "n1-standard-2"
  allow_stopping_for_update = true
  zone = "asia-south1-b"
  boot_disk {
    initialize_params {
      image = "ubuntu-2004-focal-arm64-v20250213"
      size = 20
      type = "pd-standard"
    }
  }
  network_interface {
    subnetwork = "subnet-mumbai"
  }
  labels = {
    "vm-name" = "vm-by-tf"
  }
  attached_disk {
    device_name = "attached-disk"
    source = google_compute_disk.gcp-disk.id
  }
  service_account {
    email = "terraform-sa@terraform-project-452412.iam.gserviceaccount.com"
    scopes = [ "https://www.googleapis.com/auth/cloud-platform" ]
  }
}

resource "google_compute_disk" "gcp-disk" {
  name = "gcp-disk-tf"
  size = 25
  type = "pd-ssd"
  zone = "asia-south1-b"
}