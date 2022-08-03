module "payara-client" {
	source = "../../../../modules/payara-client"
	mapper_name = "HSCIS Role"
	claim_name  = "hscis_role"
	client_id   = "HSCIS"
	base_url    = "https://hscisdev.hlth.gov.bc.ca"
	description = "Health Sector Compensation Information System"
	client_name = "HSCIS"
	roles = {	
        "DATA_ENTRY" = {
            "name" = "DATA_ENTRY"
            "description" = ""
        },
        "TESTCAFE" = {
            "name" = "TESTCAFE"
            "description" = ""
        },
        "HNFILE" = {
            "name" = "HNFILE"
            "description" = ""
        },
        "ADMIN" = {
            "name" = "ADMIN"
            "description" = ""
        },
	}
	service_accounts_enabled = false
	client_role_mapper_add_to_id_token = false
	client_role_mapper_add_to_userinfo = false
	valid_redirect_uris = [
		"http://localhost:8080/*",
		"https://logontest7.gov.bc.ca/clp-cgi/logoff.cgi*",
		"https://qa-sts.healthbc.org/adfs/ls/*",
		"https://hscisdev.hlth.gov.bc.ca/*",
		"https://localhost:8081/*",
	]
}
resource "keycloak_openid_user_attribute_protocol_mapper" "sfds_auth_4" {
    add_to_id_token = false
    add_to_userinfo = false
    claim_name = "sfds_auth_4"
    client_id = module.payara-client.CLIENT.id
    name = "sfds_auth_4"
    user_attribute = "sfds_auth_4"
    realm_id = module.payara-client.CLIENT.realm_id
}
resource "keycloak_openid_user_attribute_protocol_mapper" "sfds_auth_2" {
    add_to_id_token = false
    add_to_userinfo = false
    claim_name = "sfds_auth_2"
    client_id = module.payara-client.CLIENT.id
    name = "sfds_auth_2"
    user_attribute = "sfds_auth_2"
    realm_id = module.payara-client.CLIENT.realm_id
}
resource "keycloak_openid_user_attribute_protocol_mapper" "sfds_auth_3" {
    add_to_id_token = false
    add_to_userinfo = false
    claim_name = "sfds_auth_3"
    client_id = module.payara-client.CLIENT.id
    name = "sfds_auth_3"
    user_attribute = "sfds_auth_3"
    realm_id = module.payara-client.CLIENT.realm_id
}
resource "keycloak_openid_user_attribute_protocol_mapper" "sfds_auth_5" {
    add_to_id_token = false
    add_to_userinfo = false
    claim_name = "sfds_auth_5"
    client_id = module.payara-client.CLIENT.id
    name = "sfds_auth_5"
    user_attribute = "sfds_auth_5"
    realm_id = module.payara-client.CLIENT.realm_id
}
resource "keycloak_openid_user_attribute_protocol_mapper" "sfds_auth_1" {
    add_to_id_token = false
    add_to_userinfo = false
    claim_name = "sfds_auth_1"
    client_id = module.payara-client.CLIENT.id
    name = "sfds_auth_1"
    user_attribute = "sfds_auth_1"
    realm_id = module.payara-client.CLIENT.realm_id
}
resource "keycloak_openid_user_session_note_protocol_mapper" "IDP" {
    add_to_id_token = false
    claim_name = "identity_provider"
    claim_value_type = "String"
    client_id = module.payara-client.CLIENT.id
    name = "IDP"
    realm_id = module.payara-client.CLIENT.realm_id
    session_note = "identity_provider"
}
