output "ruby_external_ip" {
  value = google_compute_instance.ruby.network_interface.0.access_config.0.nat_ip
}
output "ruby_internal_ip" {
  value = google_compute_instance.ruby.network_interface.0.network_ip
}
