resource "google_compute_instance" "db" {
  name         = "mongo"
  machine_type = "g1-small"
  zone         = "europe-west1-b"
  tags         = ["reddit-db"]
  metadata = {
    ssh-keys = "root:${file(var.public_key_path)}"
  }
  boot_disk {
    initialize_params {
      image = var.db_disk_image
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }
}

resource "google_compute_firewall" "firewall_mongo" {
  name    = "allow-terrmongo-default"
  network = "default"
  allow {
    protocol = "tcp"
    ports    = ["27017"]
  }
  source_tags = ["reddit-app"]
  target_tags = ["reddit-db"]
}
