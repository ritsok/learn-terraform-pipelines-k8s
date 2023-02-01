# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

terraform {
  backend "remote" {
    organization = "hashicorp-learn"    
    workspaces {
      name = "learn-terraform-pipelines-k8s"
    }
  }
required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 3.55"
    }
}

required_version = ">= 1.1.0"
}



provider "google" {
  project = var.google_project
  region  = var.region
}
