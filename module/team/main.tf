resource "github_team" "main" {
  name           = var.team-name
  description    = var.team-description
  privacy        = var.team-privacy
  parent_team_id = var.team-parent_team_id
  ldap_dn        = var.team-ldap_dn
}

resource "github_team_membership" "members" {
  for_each = toset(var.team-members)

  team_id  = github_team.main.id
  username = each.value
  role     = var.team-members_role[each.value]
}
