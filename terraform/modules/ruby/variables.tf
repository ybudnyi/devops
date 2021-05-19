variable "public_key_path" {
  description = "Path to the public key used for ssh access"
}
variable "ruby_disk_image" {
  description = "disk for ruby server"
  default     = "reddit-app-base"
}
