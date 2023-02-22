# A resource block declares a resource of a given type with a given local name. 
# The name is used to refer to this resource from elsewhere in the same Terraform module, 
# but has no significance outside of the scope of a module.

// 1. block name, 2. resouce type consists provider=local and resource=file, 3. resource name
resource "local_file" "pet" {
  # Arguments
  filename = "pets.txt"
  content  = "you love pets"
}

# examples
# 1. ec2 instabce

# resource "aws_instance" "webserver" {
#   ami = "ami-value"
#   instance_type = "t2_micro"
# }

# 2. aws s3 bucket

# resource "aws_s3_bucket" "data" {
#     bucket = "name"
#     acl = "private"
# }