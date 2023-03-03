# variable have three options
# 1. default
# 2. type
# 3. description
# be default type is any

variable "filename" {
  default     = "pets.txt"
  type        = string
  description = "the name of local file"
}

variable "content" {
  default     = "you love pets"
  type        = string
  description = "the content for a file"
}

variable "prefix" {
  default = "Mrs"
  type    = string
}

variable "separator" {
  default = "."
  type    = string
}

variable "length" {
  default = "2"
  type    = number
}

# # cloud examples
# variable "ami" {
#   default = "ami-value"
# }

# variable "instance_type" {
#   default = "t2_micro"
# }

# variable "bucket" {
#   default = "name"
# }

# variable "acl" {
#   default = "private"
# }

# # examples of variables with types
# # 1. list
# variable "list" {
#   default = ["list1", "list2", "list3"]
#   type    = list(any)
#   #   add constraints only strings
#   #   type = list(string)
# }

# # 2. maps
# variable "file-content" {
#   default = {
#     "statement1" : "statement 1"
#     "statement2" : "statement 2"
#   }
#   type = map(any)
#   #   add constraints only strings
#   #   type = map(string)
# }

# # 3. sets
# variable "age" {
#   default = ["20", "30", "22"]
#   type = set
# }

# # 4. objects
# variable "person" {
#   type = object({
#     name = string
#     age = number
#     gander = string
#     favorite_food = list(string)
#   })

#   default = {
#     age = 30
#     favorite_food = [ "fish", "chicken"]
#     gander = "male"
#     name = "john"
#   }
# }

# # 5. tuples
# variable "kitty" {
#   type = tuple([string, number, bool])
#   default = [
#   "cate", 1, true]
# }