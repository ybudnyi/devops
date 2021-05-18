variable "project" {
  description = "Project ID"
}
variable "zone" {
  description = "Region"
  default     = "europe-central2-a"
}
variable "region" {
  default = "europe-central2"
}
variable "public_key_path" {
  description = "Path to the public key used for ssh access"
}
variable "disk_image" {
  description = "Disk image"
}
variable "ruby_disk_image" {
  description = "disk for ruby server"
  default     = "reddit-app-base"
}
variable "db_disk_image" {
  description = "disk for mongodb server"
  default     = "reddit-db-base"
}
