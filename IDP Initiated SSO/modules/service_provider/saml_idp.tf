resource "keycloak_saml_identity_provider" "idp_provider" {
  realm                      = keycloak_realm.sp.id
  alias                      = "saml"
  entity_id                  = "http://localhost:9090/realms/idp"
  single_sign_on_service_url = "http://localhost:9090/realms/idp/protocol/saml"
  single_logout_service_url  = "http://localhost:9090/realms/idp/protocol/saml"
  first_broker_login_flow_alias = "auto register"
  sync_mode = "FORCE"
}

resource "keycloak_attribute_importer_identity_provider_mapper" "importHashString" {
  realm = keycloak_realm.sp.id
  identity_provider_alias = "saml"
  name = "hash-string"
  user_attribute = "hash-string"
  attribute_name = "hash-string"
}