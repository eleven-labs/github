variable "default-issue_labels" {
  type = list(
    object({
      name        = string,
      color       = string,
      description = string
    })
  )

  default = [
    {
      name        = "status/depend"
      color       = "d93f0b"
      description = "status: depend"
    },
    {
      name        = "status/mergeable"
      color       = "009800"
      description = "status: mergeable"
    },
    {
      name        = "status/reviewable"
      color       = "1d76db"
      description = "status: reviewable"
    },
    {
      name        = "status/wip"
      color       = "ffdd88"
      description = "status: wip"
    },
    {
      name        = "type/chore"
      color       = "84b6eb"
      description = "type: chore"
    },
    {
      name        = "type/feat"
      color       = "1abc9c"
      description = "type: feat"
    },
    {
      name        = "type/fix"
      color       = "fbca04"
      description = "type: fix"
    },
    {
      name        = "type/question"
      color       = "c7def8"
      description = "type: question"
    },
    {
      name        = "type/refactor"
      color       = "5319e7"
      description = "type: refactor"
    },
    {
      name        = "type/test"
      color       = "cccccc"
      description = "type: test"
    }
  ]
}

variable "packagist_token" {
  type = string
}
