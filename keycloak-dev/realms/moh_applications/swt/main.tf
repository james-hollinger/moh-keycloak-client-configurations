module "payara-client" {
	source = "../../../../modules/payara-client"
	mapper_name = "SWT Role"
	claim_name  = "swt_role"
	client_id   = "SWT"
	base_url    = "https://swtadmind.hlth.gov.bc.ca/swt/admin"
	description = "The Surgical Wait Times application allows the general public to view the wait list for each type of elective surgery in the province."
	client_name = "SWT"
	roles = {	
        "Analyst" = {
            "name" = "Analyst"
            "description" = ""
        },
        "Reviewer" = {
            "name" = "Reviewer"
            "description" = ""
        },
        "Administrator" = {
            "name" = "Administrator"
            "description" = ""
        },
	}
	service_accounts_enabled = false
	client_role_mapper_add_to_id_token = false
	client_role_mapper_add_to_userinfo = false
	valid_redirect_uris = [
		"http://localhost:8080/*",
		"https://logontest7.gov.bc.ca/clp-cgi/logoff.cgi*",
		"https://swtadmind.hlth.gov.bc.ca/*",
		"https://localhost:8081/*",
	]
}
