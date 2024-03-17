provider "auth0" {
  domain       = var.auth0_domain
  client_id    = var.auth0_client_id
  client_secret = var.auth0_client_secret
}

resource "auth0_organization" "my_organization" {
  name         = "My Organization"
  display_name = "My Organization Display Name"
  
  brand {
    logo_url = "https://example.com/logo.png"
    
    colors {
      primary          = "#FF5733"
      page_background = "#FFFFFF"
    }
  }
}
