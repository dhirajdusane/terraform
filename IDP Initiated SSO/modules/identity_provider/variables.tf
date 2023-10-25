#Default variables

variable "idpName" {
  description = "Default IDP Name."
  type        = string
  default     = "idp"
}

variable "idpFullName" {
  description = "Default IDP Full Name."
  type        = string
  default     = "<b>Identity Provider</b>"
}