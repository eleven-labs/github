resource "github_repository" "main" {
  name         = var.repository-name
  description  = var.repository-description
  homepage_url = var.repository-homepage_url
  topics       = var.repository-topics

  private = var.repository-private

  has_issues    = var.repository-has_issues
  has_projects  = var.repository-has_projects
  has_wiki      = var.repository-has_wiki
  has_downloads = var.repository-has_downloads

  allow_merge_commit = var.repository-allow_merge_commit
  allow_squash_merge = var.repository-allow_squash_merge
  allow_rebase_merge = var.repository-allow_rebase_merge

  auto_init = var.repository-auto_init

  gitignore_template = var.repository-gitignore_template
  license_template   = var.repository-license_template

  default_branch = (var.repository-default_branch != "master" ? var.repository-default_branch : null)

  archived = var.repository-archived

  lifecycle {
    prevent_destroy = true
  }
}
