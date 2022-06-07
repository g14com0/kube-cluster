terraform {
  required_version = ">= 0.13.0"

  backend "gcs" {
    bucket = "gcfrgcfr"
    prefix = "gcfr/terraform/state"
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.11.0"
    }
  }
}
