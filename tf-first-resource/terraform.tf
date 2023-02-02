provider "github" {
  # Configuration options
  token = "your github token is here"
}

resource "github_repository" "terraform-first-repo" {
  name        = "first-repo-from-terraform"
  description = "first-repo-from-terraform"

  visibility = "public"

  auto_init = true
}


resource "github_repository" "terraform-second-repo" {
  name        = "second-repo-from-terraform"
  description = "second-repo-from-terraform"

  visibility = "public"

  auto_init = true
}