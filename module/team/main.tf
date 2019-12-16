resource "github_team" "main" {
  name           = var.team-name
  description    = var.team-description
  privacy        = var.team-privacy
  parent_team_id = var.team-parent_team_id
  ldap_dn        = var.team-ldap_dn
}

resource "github_team_membership" "members" {
  count = length(var.team-members)

  team_id  = github_team.main.id
  username = var.team-members[count.index].login
  role     = var.team-members[count.index].role
}

