// run command: terraform plan
// pass variable value from command: terraform plan -var "username=ali"
// pass multiple variable value from command: terraform plan -var "username=ali" -var "age=30"
// data types 

// defaut value
variable "username" { 
    type = string
    default = "world"
}

variable "age" { 
    type = number
}

// list
variable "users" {
  type = list
  default = ["test1", "TEST2", "test3"]
}