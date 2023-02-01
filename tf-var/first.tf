variable "age" { 
    type = number
}

variable "username" {
  type = string
}

output "printname" {
  value = "Hello ${var.username}, your age is ${var.age}"
}
