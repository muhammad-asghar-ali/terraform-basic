output "usersList" {
  value = "${var.users[0]}"
}

// functions
// join
output "printList" {
  value = "${join(",", var.users)}"
}

// upper
output "upper" {
  value = "${upper(var.users[0])}"
}

// lower
output "lower" {
  value = "${lower(var.users[1])}"
}

// title
output "title" {
  value = "${title(var.users[2])}"
}