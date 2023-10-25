resource "keycloak_authentication_flow" "autoRegister" {
  realm_id = keycloak_realm.sp.id
  alias = "auto register"
}

resource "keycloak_authentication_execution" "createIfUnique" {
  realm_id = keycloak_realm.sp.id
  parent_flow_alias = "auto register"
  authenticator = "idp-create-user-if-unique"
  requirement       = "ALTERNATIVE"
}

resource "keycloak_authentication_execution" "autoSetExistingUser" {
  realm_id = keycloak_realm.sp.id
  parent_flow_alias = "auto register"
  authenticator = "idp-auto-link"
  requirement       = "ALTERNATIVE"
}