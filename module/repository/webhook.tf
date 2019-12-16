resource "github_repository_webhook" "main" {
  count = length(var.webhooks)

  repository = github_repository.main.name

  configuration {
    url          = var.webhooks[count.index].url
    content_type = var.webhooks[count.index].content_type
    insecure_ssl = var.webhooks[count.index].insecure_ssl
  }

  active = var.webhooks[count.index].active

  events = var.webhooks[count.index].events
}
