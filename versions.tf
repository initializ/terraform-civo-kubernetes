terraform {
  required_version = ">= 1.0.0"

  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5.2"
    }
    civo = {
      source  = "civo/civo"
      version = "~> 1.1.2"
    }
  }
}
