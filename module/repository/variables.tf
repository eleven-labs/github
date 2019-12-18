variable "repository-name" {
  type = string
}

variable "repository-description" {
  type = string

  default = null
}

variable "repository-homepage_url" {
  type = string

  default = null
}

variable "repository-private" {
  type = bool

  default = true
}

variable "repository-has_issues" {
  type = bool

  default = true
}

variable "repository-has_projects" {
  type = bool

  default = true
}

variable "repository-has_wiki" {
  type = bool

  default = true
}

variable "repository-has_downloads" {
  type = bool

  default = true
}

variable "repository-allow_merge_commit" {
  type = bool

  default = true
}

variable "repository-allow_squash_merge" {
  type = bool

  default = true
}

variable "repository-allow_rebase_merge" {
  type = bool

  default = true
}

variable "repository-auto_init" {
  type = bool

  default = false
}

variable "repository-gitignore_template" {
  type = string

  default = null
}

variable "repository-license_template" {
  type = string

  default = null
}

variable "repository-default_branch" {
  type = string

  default = null
}

variable "repository-archived" {
  type = bool

  default = false
}

variable "repository-topics" {
  type = list(string)

  default = []
}

variable "branches_protection" {
  type = list(
    object({
      branch                                     = string,
      enforce_admins                             = bool,
      require_signed_commits                     = bool,
      status_check-strict                        = bool,
      status_check-contexts                      = list(string),
      pr_reviews-required_approving_review_count = number
      pr_reviews-require_code_owner_reviews      = bool,
      pr_reviews-dismiss_stale_reviews           = bool,
      pr_reviews-dismissal_users                 = list(string),
      pr_reviews-dismissal_teams                 = list(string),
      restrictions-users                         = list(string),
      restrictions-teams                         = list(string)
    })
  )

  default = []
}

variable "webhooks" {
  type = list(
    object({
      url          = string,
      secret       = string,
      content_type = string,
      insecure_ssl = bool,
      active       = bool,
      events       = list(string)
    })
  )

  default = []
}

variable "repository-issue_labels" {
  type = list(
    object({
      name        = string,
      color       = string,
      description = string
    })
  )

  default = []
}
