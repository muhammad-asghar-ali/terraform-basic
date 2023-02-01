terraform plan
terraform plan -var "username=ali" -var "age=30" -var "users=['test']"

// pass list
terraform plan -var "users=["test", "test1", "test2"]"

// run custom file 
command: terraform plan -var-file=filename

// env variables
command: export TF_VAR_username=test