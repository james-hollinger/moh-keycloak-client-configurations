module "payara-client" {
	source = "../../../../modules/payara-client"
	mapper_name = "GIS Role"
	claim_name  = "gis_role"
	client_id   = "GIS"
	base_url    = "https://gist.hlth.gov.bc.ca/gis"
	description = "The Guaranteed Income Supplement is used by Health Authorities to determine the rate of service fees to be charged to the client for certain Home Care services (Home Support or Residential Care)."
	client_name = "GIS"
	roles = {	
        "GISUSER" = {
            "name" = "GISUSER"
            "description" = ""
        },
	}
	service_accounts_enabled = false
	client_role_mapper_add_to_id_token = false
	client_role_mapper_add_to_userinfo = false
	valid_redirect_uris = [
		"https://sts.healthbc.org/adfs/ls/*",
		"https://logontest7.gov.bc.ca/clp-cgi/logoff.cgi*",
		"https://shadow.hlth.gov.bc.ca:15281/*",
		"https://gist.hlth.gov.bc.ca/*",
	]
}
