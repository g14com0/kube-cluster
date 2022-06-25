provider "google" {
  project = "gcfr-352018"
}

module "google_kubernetes_cluster" {
  source = "github.com/g14com0/terraform-modules//gke?ref=main"

  name                     = "gcfr-2"
  project                  = "gcfr-352018"
  remove_default_node_pool = false

  regions = "europe-west3"
  zone    = ["europe-west3-a"]
  zonal   = false
  node_pools = [
    {
      machine_type = "e2-small"
      image_type   = "COS_CONTAINERD"
    },
  ]
}
