terraform {
  backend "s3" {
        endpoint = "https://objectstore.nyc1.civo.com" # CIVO Object Storage endpoint
        access_key="XXXXXXXXXXXXXXXX"           # Access and secret keys
        secret_key="XXXXXXXXXXXXXXXXXXXXXXXXXXX"
        skip_credentials_validation = true  # Skip AWS related checks and validations
        skip_metadata_api_check = true
        skip_region_validation = true
        force_path_style = true             # Enable path-style S3 URLs (https://<HOST>/<BUCKET> https://www.terraform.io/language/settings/backends/s3#force_path_style    
  }
}

variable "civo_token" {}
# Configure the Civo Provider
provider "civo" {
  token = var.civo_token
  region = var.region
}
