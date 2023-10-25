resource "keycloak_realm" "sp" {
  realm             = var.spName
  enabled           = true
  display_name      = var.spName
  display_name_html = var.spFullName
}