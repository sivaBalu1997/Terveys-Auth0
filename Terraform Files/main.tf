provider "auth0" {
  domain       = var.auth0_domain
  client_id    = var.auth0_client_id
  client_secret = var.auth0_client_secret
}

resource "auth0_organization" "demo_organization" {
  name         = "Demo Organization"
  display_name = "Demo Organization Display Name"
  
  brand {
    logo_url = "https://demo.com/logo.png"
    
    colors {
      primary          = "#FF5733"
      page_background = "#FFFFFF"
    }
  }
}
