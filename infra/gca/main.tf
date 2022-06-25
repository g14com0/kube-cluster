provider "google" {
  project = "gcfr-352018"
}

module "google_kubernetes_cluster" {
  source = "github.com/g14com0/terraform-modules//gca?ref=main"

  name   = "ingress"
  region = "europe-west3"
}