variable "team-name" {
  type = string
}

variable "team-description" {
  type = string

  default = null
}

variable "team-privacy" {
  type = string

  default = "secret"
}

variable "team-parent_team_id" {
  type = string

  default = null
}

variable "team-ldap_dn" {
  type = string

  default = null
}

variable "team-members" {
  type = list(string)

  default = []
}


variable "team-members_role" {
  type = map

  default = {}
}
