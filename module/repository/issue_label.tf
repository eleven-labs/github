resource "github_issue_label" "main" {
  count = length(var.repository-issue_labels)

  repository  = github_repository.main.name
  name        = var.repository-issue_labels[count.index].name
  color       = var.repository-issue_labels[count.index].color
  description = var.repository-issue_labels[count.index].description
}
