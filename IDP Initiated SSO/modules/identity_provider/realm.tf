resource "keycloak_realm" "idp" {
  realm             = var.idpName
  enabled           = true
  display_name      = var.idpName
  display_name_html = var.idpFullName
  login_with_email_allowed = false
  duplicate_emails_allowed = true
  verify_email = true
  edit_username_allowed = false
  remember_me = true
}