resource "github_branch_protection" "main" {
  count = length(var.branches_protection)

  repository = github_repository.main.name
  branch     = var.branches_protection[count.index].branch

  enforce_admins = var.branches_protection[count.index].enforce_admins

  require_signed_commits = var.branches_protection[count.index].require_signed_commits

  required_status_checks {
    strict   = var.branches_protection[count.index].status_check-strict
    contexts = var.branches_protection[count.index].status_check-contexts
  }

  # TODO: find a way to disable this block
  #required_pull_request_reviews {
  #  required_approving_review_count = var.branches_protection[count.index].pr_reviews-required_approving_review_count
  #  dismiss_stale_reviews           = var.branches_protection[count.index].pr_reviews-dismiss_stale_reviews
  #  dismissal_users                 = var.branches_protection[count.index].pr_reviews-dismissal_users
  #  dismissal_teams                 = var.branches_protection[count.index].pr_reviews-dismissal_teams
  #  require_code_owner_reviews      = var.branches_protection[count.index].pr_reviews-require_code_owner_reviews
  #}

  restrictions {
    users = var.branches_protection[count.index].restrictions-users
    teams = var.branches_protection[count.index].restrictions-teams
  }
}
