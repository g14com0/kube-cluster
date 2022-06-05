provider "google" {
  project = "gcfr-352018"
}

module "google_kubernetes_cluster" {
  source = "github.com/g14com0/kube-terraform//gke?ref=gkeDev"

  name               = "test"
  location           = "us-central1"
  initial_node_count = 1
  project            = "gcfr-352018"
  remove_default_node_pool = false
}

terraform {
  required_version = ">= 0.13.0"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.11.0"
    }
  }
}