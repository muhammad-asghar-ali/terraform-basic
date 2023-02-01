variable "usersage" {
  type = map
  default = {
    test = 21
    test1 = 20
  }
}

variable "username" {
    type = string
}

output "userage" {
  value = "test user with age ${lookup(var.usersage, "test")}"
}

// make it dynamic

output "users" {
  value =  "${var.username} user with age ${lookup(var.usersage, "${var.username}")}"
}