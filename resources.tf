terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.4.0"
    }
  }
  required_version = ">= 0.13"
}


provider "google" {
  credentials = file("terraform_credentails.json")
  project     = var.project_id
  region      = "us-central1"
  zone        = "us-central1-a"
  #request_timeout = "60s"
}