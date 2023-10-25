resource "keycloak_saml_client" "spsso" {
  client_id                       = "spsso"
  realm_id                        = keycloak_realm.sp.id
  idp_initiated_sso_url_name      = "spsso"
  master_saml_processing_url = "https://localhost:44381/auth/redirect-app"
}