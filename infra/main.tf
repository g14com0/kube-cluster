provider "google" {
  project = "gcfr-352018"
}

module "google_kubernetes_cluster" {
  source = "github.com/g14com0/kube-terraform//gke?ref=main"

  name                     = "gcfr"
  project                  = "gcfr-352018"
  remove_default_node_pool = true

  regions = "europe-west3"
  zone    = ["europe-west3-a"]
  zonal   = false
  node_pools_name = ["node1", "node2"]
}