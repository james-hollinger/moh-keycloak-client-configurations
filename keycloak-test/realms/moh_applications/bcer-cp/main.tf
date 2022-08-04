resource "keycloak_openid_client" "CLIENT" {
    access_token_lifespan = ""
    access_type = "PUBLIC"
    base_url    = "https://bcer-test.hlth.gov.bc.ca/portal"
    client_authenticator_type = "client-secret"
    client_id   = "BCER-CP"
    consent_required = false
    description = "B.C. E-Substances Reporting Common Portal"
    direct_access_grants_enabled = false
    enabled = true
    frontchannel_logout_enabled = false
    full_scope_allowed          = false
    implicit_flow_enabled       = false
    name = "BCER-CP"
    pkce_code_challenge_method = "S256"
    realm_id = "moh_applications"
    service_accounts_enabled =false
    standard_flow_enabled = true
    valid_redirect_uris = [
		"https://bcer-test.hlth.gov.bc.ca/portal/*",
	]
    web_origins = [
		"+",
	]
}
module "client-roles" {
    source = "../../../../modules/client-roles"
    client_id = keycloak_openid_client.CLIENT.id
    realm_id = keycloak_openid_client.CLIENT.realm_id
    roles = {
        "bcer_admin" = {
            "name" = "bcer_admin"
            "description" = ""
        },
        "health_authority" = {
            "name" = "health_authority"
            "description" = ""
        },
        "moh_admin" = {
            "name" = "moh_admin"
            "description" = ""
        },
	}
}
