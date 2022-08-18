module "payara-client" {
	source = "../../../../modules/payara-client"
	mapper_name = "EACL Role"
	claim_name  = "eacl_role"
	client_id   = "EACL"
	base_url    = "https://eacl.hlth.gov.bc.ca"
	description = "The Enhanced Audit Confirmation Letters applications is used to analyze Pharmacare Audit Information to generate letters to end users and process the returned letters."
	client_name = "EACL"
	roles = {	
        "EACL_Sysadmin" = {
            "name" = "EACL_Sysadmin"
            "description" = ""
        },
        "Super_Auditor" = {
            "name" = "Super_Auditor"
            "description" = ""
        },
        "SYSADMIN" = {
            "name" = "SYSADMIN"
            "description" = ""
        },
        "EACL_Auditor" = {
            "name" = "EACL_Auditor"
            "description" = ""
        },
        "PharmaCare_Auditor" = {
            "name" = "PharmaCare_Auditor"
            "description" = ""
        },
        "Super_Sysadmin" = {
            "name" = "Super_Sysadmin"
            "description" = ""
        },
	}
	service_accounts_enabled = false
	client_role_mapper_add_to_id_token = false
	client_role_mapper_add_to_userinfo = false
	valid_redirect_uris = [
		"https://logon7.gov.bc.ca/clp-cgi/logoff.cgi*",
		"https://eacl.hlth.gov.bc.ca/*",
	]
}
