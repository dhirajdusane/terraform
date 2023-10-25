resource "keycloak_saml_client" "samlsso" {
  client_id                       = "http://localhost:9090/realms/idp"
  realm_id                        = keycloak_realm.idp.id
  idp_initiated_sso_url_name      = "idpsso"
  valid_redirect_uris             = ["http://localhost:9090/realms/sp/broker/saml/endpoint"]
  assertion_consumer_post_url     = "http://localhost:9090/realms/sp/broker/saml/endpoint/clients/spsso"
  logout_service_post_binding_url = "http://localhost:9090/realms/sp/broker/saml/endpoint"
}