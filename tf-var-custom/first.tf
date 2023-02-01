// run custom file 
// command: terraform plan -var-file=filename

variable "age" { 
    type = number
}

variable "username" {
  type = string
}

output "printname" {
  value = "Hello ${var.username}, your age is ${var.age}"
}
