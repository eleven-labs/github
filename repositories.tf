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
      status_check-contexts                      = ["terraform"]
      pr_reviews-required_approving_review_count = 1
      pr_reviews-require_code_owner_reviews      = false
      pr_reviews-dismiss_stale_reviews           = false
      pr_reviews-dismissal_users                 = []
      pr_reviews-dismissal_teams                 = []
      restrictions-users                         = []
      restrictions-teams                         = []
    }
  ]

  # webhooks
  webhooks = []

  repository-issue_labels = concat(var.default-issue_labels)
}

module "blog_eleven-labs_com" {
  source = "./module/repository/"

  # repository
  repository-name         = "blog.eleven-labs.com"
  repository-description  = "Eleven-labs blog"
  repository-homepage_url = "https://blog.eleven-labs.com"
  repository-topics       = ["jekyll", "blog", "article", "le-blog"]

  repository-private = false

  repository-has_projects = false

  repository-auto_init      = false
  repository-default_branch = "master"

  # branches protection
  branches_protection = [
    {
      branch                                     = "master"
      enforce_admins                             = false
      require_signed_commits                     = false
      status_check-strict                        = true
      status_check-contexts                      = ["continuous-integration/travis-ci"]
      pr_reviews-required_approving_review_count = 1
      pr_reviews-require_code_owner_reviews      = false
      pr_reviews-dismiss_stale_reviews           = false
      pr_reviews-dismissal_users                 = [module.PEJOUTThomas.login]
      pr_reviews-dismissal_teams                 = []
      restrictions-users                         = [module.PEJOUTThomas.login]
      restrictions-teams                         = []
    }
  ]

  # webhooks
  webhooks = [
    {
      url          = "https://notify.travis-ci.org"
      secret       = null
      content_type = "form"
      insecure_ssl = false
      active       = true
      events       = ["create", "delete", "issue_comment", "member", "public", "pull_request", "push", "repository"]
    }
  ]

  repository-issue_labels = concat(var.default-issue_labels)
}

module "codelabs" {
  source = "./module/repository/"

  # repository
  repository-name = "codelabs"

  repository-private = false

  repository-auto_init      = false
  repository-default_branch = "master"

  # branches protection
  branches_protection = [
    {
      branch                                     = "master"
      enforce_admins                             = false
      require_signed_commits                     = false
      status_check-strict                        = true
      status_check-contexts                      = ["ci/circleci: node8"]
      pr_reviews-required_approving_review_count = 1
      pr_reviews-require_code_owner_reviews      = false
      pr_reviews-dismiss_stale_reviews           = false
      pr_reviews-dismissal_users                 = [module.PEJOUTThomas.login]
      pr_reviews-dismissal_teams                 = []
      restrictions-users                         = [module.PEJOUTThomas.login]
      restrictions-teams                         = []
    }
  ]

  # webhooks
  webhooks = [
    {
      url          = "https://notify.travis-ci.org"
      secret       = null
      content_type = "form"
      insecure_ssl = false
      active       = true
      events       = ["create", "delete", "issue_comment", "member", "public", "pull_request", "push", "repository"]
    },
    {
      url          = "https://circleci.com/hooks/github"
      secret       = null
      content_type = "form"
      insecure_ssl = false
      active       = true
      events       = ["commit_comment", "create", "delete", "fork", "gollum", "issue_comment", "issues", "member", "public", "pull_request", "pull_request_review_comment", "push", "release", "status", "team_add", "watch"]
    }
  ]

  repository-issue_labels = concat(var.default-issue_labels)
}

module "wheel-of-fortune" {
  source = "./module/repository/"

  # repository
  repository-name = "wheel-of-fortune"

  repository-private = false

  repository-auto_init      = false
  repository-default_branch = "master"

  # branches protection
  branches_protection = []

  # webhooks
  webhooks = []

  repository-issue_labels = concat(var.default-issue_labels)
}

module "planets" {
  source = "./module/repository/"

  # repository
  repository-name = "planets"

  repository-private = true

  repository-auto_init      = false
  repository-default_branch = "master"

  # branches protection
  branches_protection = []

  # webhooks
  webhooks = []

  repository-issue_labels = concat(var.default-issue_labels)
}
