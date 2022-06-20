terraform {
  required_version = ">= 1.2.2"

  backend "gcs" {
    bucket = "gcfr-352018"
    prefix = "terraform/state"
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.11.0"
    }
  }
}