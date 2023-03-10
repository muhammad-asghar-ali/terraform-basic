# A resource block declares a resource of a given type with a given local name. 
# The name is used to refer to this resource from elsewhere in the same Terraform module, 
# but has no significance outside of the scope of a module.

# 1. block name, 2. resouce type consists provider=local and resource=file, 3. resource name
resource "local_file" "pet" {
  # Arguments
  filename = var.filename
  content  = var.content
}

# resource attribute reference in terraform
# implicit dependencies
resource "local_file" "pet_resource" {
  # Arguments
  filename = "cats"
  content  = "favorite pet is ${random_pet.my-pet.id}"
}

# explicit dependencies
resource "local_file" "pet_resource_expicit" {
  # Arguments
  filename = "dogs"
  content  = "favorite pet is Mr.dog"
  depends_on = [
    random_pet.my-pet
  ]
}

resource "random_pet" "my-pet" {
  prefix = var.prefix
  separator = var.separator
  length = var.length
}

# OUTPUT
output "pet-name" {
  value = random_pet.my-pet.id
  description = "optional description "
}


# examples
# 1. ec2 instabce

# resource "aws_instance" "webserver" {
#   ami = var.ami
#   instance_type = var.instance_type
# }

# 2. aws s3 bucket

# resource "aws_s3_bucket" "data" {
#     bucket = var.bucket
#     acl = var.acl
# }

# variable type examples

# resource "list_type" "list" {
#   list = var.list[0]
# }
# resource "map_type" "map" {
#   filename = var.filename
#   content = var.map_type["statement1"]
# }
