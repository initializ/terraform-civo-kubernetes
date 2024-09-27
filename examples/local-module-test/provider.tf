terraform {
  backend "s3" {
#        endpoint = "https://objectstore.nyc1.civo.com" # CIVO Object Storage endpoint - Provide as input terraform init -backend-config="endpoint=https://objectstore.nyc1.civo.com"
#        access_key= "XXXXXX"           # Access keys - Provide as input terraform init -backend-config="access_key=XXXX"
#        secret_key= "XXXXXXXXX"        # secret keys - Provide as input terraform init -backend-config="secret_key=XXXX"
        skip_credentials_validation = true  # Skip AWS related checks and validations
        skip_metadata_api_check = true
        skip_region_validation = true
        force_path_style = true             # Enable path-style S3 URLs (https://<HOST>/<BUCKET> https://www.terraform.io/language/settings/backends/s3#force_path_style    
  }

  required_providers {
    civo = {
      source = "civo/civo"
      version = ">= 1.1.2"
    }
  }
}
