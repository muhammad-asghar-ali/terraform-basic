
resource "github_repository" "terraform-first-repo" {
  name        = "first-repo-from-terraform"
  description = "first-repo-from-terraform"

  visibility = "public"

  auto_init = true
}


# resource "github_repository" "terraform-second-repo" {
#   name        = "second-repo-from-terraform"
#   description = "second-repo-from-terraform"

#   visibility = "public"

#   auto_init = true
# }

output "terraform-first-repo-url" {
  value = github_repository.terraform-first-repo.html_url
}