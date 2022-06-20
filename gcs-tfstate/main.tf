provider "google" {
  project = "gcfr-352018"
}

module "google_storage_bucket" {
  source = "github.com/g14com0/kube-terraform//gcs?ref=main"

  name     = "gcfr-352018"
  location = "EU"
}