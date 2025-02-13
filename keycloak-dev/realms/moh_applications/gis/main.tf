module "payara-client" {
  source                             = "../../../../modules/payara-client"
  base_url                           = "https://gisd.hlth.gov.bc.ca/gis"
  claim_name                         = "gis_role"
  client_id                          = "GIS"
  client_name                        = "GIS"
  client_role_mapper_add_to_id_token = false
  client_role_mapper_add_to_userinfo = false
  description                        = "The Guaranteed Income Supplement is used by Health Authorities to determine the rate of service fees to be charged to the client for certain Home Care services (Home Support or Residential Care)."
  mapper_name                        = "GIS Role"
  roles = {
    "GISUSER" = {
      "name" = "GISUSER"
    },
  }
  service_accounts_enabled = false
  valid_redirect_uris = [
    "http://localhost:8080/*",
    "https://localhost:8081/*",
    "https://gisd.hlth.gov.bc.ca/*",
    "https://logontest7.gov.bc.ca/clp-cgi/logoff.cgi*",
    "https://qa-sts.healthbc.org/adfs/ls/*",
  ]
}
