provider "google" {
  version = "3.67.0"

  project = var.project

  region = var.region
}
module "ruby" {
  source          = "./modules/ruby"
  public_key_path = var.public_key_path
  ruby_disk_image = var.ruby_disk_image
}
module "db" {
  source          = "./modules/db"
  public_key_path = var.public_key_path
  db_disk_image   = var.db_disk_image
}
module "vpc" {
  source = "./modules/vpc"
}

