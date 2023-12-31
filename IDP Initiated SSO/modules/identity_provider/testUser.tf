resource "keycloak_user" "testUser" {
  realm_id = keycloak_realm.idp.id
  username = "idptestuser"
  first_name = "test"
  last_name = "user"
  email = "testuser@mail.com"
  email_verified = true  
  enabled = true
  initial_password {
    value = "12345"
    temporary = false
  }
}