resource "github_membership" "main" {
  username = data.github_user.main.login
  role     = var.user-role
}
