provider "google" {
  project = "gcfr-352018"
}

module "google_kubernetes_cluster" {
  source = "github.com/g14com0/kube-terraform//gke?ref=gkeDev"

  name               = "test"
  initial_node_count = 1
  project            = "gcfr-352018"
  remove_default_node_pool = false

  regions = "europe-west3"
  zone = ["europe-west3-b", "europe-west3-c"]
  zonal = true
}