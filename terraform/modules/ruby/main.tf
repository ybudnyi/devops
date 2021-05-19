resource "google_compute_instance" "ruby" {
  name         = "ruby"
  machine_type = "g1-small"
  zone         = "europe-central2-a"
  tags         = ["reddit-app"]
  metadata = {
    ssh-keys = "root:${file(var.public_key_path)}"
  }
  boot_disk {
    initialize_params {
      image = var.ruby_disk_image
    }
  }

  network_interface {
    network = "default"
    access_config {
      nat_ip = google_compute_address.ruby_ip.address
    }
  }
}

resource "google_compute_firewall" "firewall_puma" {
  name    = "allow-terrpuma-default"
  network = "default"
  allow {
    protocol = "tcp"
    ports    = ["9292"]
  }
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["reddit-app"]
}
resource "google_compute_address" "ruby_ip" {
  name = "ruby-ip"
}
