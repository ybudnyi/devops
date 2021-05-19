variable "public_key_path" {
  description = "Path to the public key used for ssh access"
}
variable "db_disk_image" {
  description = "disk for mongodb server"
  default     = "reddit-db-base"
}
