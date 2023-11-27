terraform {
  required_version = ">= 1.0.0"

  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.4.0"
    }
    civo = {
      source  = "civo/civo"
      version = "~> 1.0.39"
    }
  }
}
