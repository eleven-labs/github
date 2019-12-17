module "github" {
  source = "./module/repository/"

  # repository
  repository-name        = "github"
  repository-description = "github organization management with terraform"
  repository-topics      = ["terraform", "github"]

  repository-private = false

  repository-auto_init      = false
  repository-default_branch = "master"

  # branches protection
  branches_protection = [
    {
      branch                                     = "master"
      enforce_admins                             = true
      require_signed_commits                     = true
      status_check-strict                        = true
      status_check-contexts                      = ["continuous-integration/travis-ci"]
      pr_reviews-required_approving_review_count = 1
      pr_reviews-require_code_owner_reviews      = false
      pr_reviews-dismiss_stale_reviews           = false
      pr_reviews-dismissal_users                 = []
      pr_reviews-dismissal_teams                 = [module.core.slug]
      restrictions-users                         = []
      restrictions-teams                         = []
    }
  ]

  # webhooks
  webhooks = [
    {
      url          = "https://notify.travis-ci.org"
      content_type = "form"
      insecure_ssl = false
      active       = true
      events       = ["create", "delete", "issue_comment", "member", "public", "pull_request", "push", "repository"]
    }
  ]

  repository-issue_labels = concat(var.default-issue_labels)
}
