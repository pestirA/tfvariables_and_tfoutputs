# tfvariables_and_tfoutputs
Validates the user of the following commands and ways to parse variable files
  vars.tfvars --> terraform plan -var-file=vars.tfvars
  terraform.tfvars -->terraform plan
  vars.auto.tfvars -->terraform.plan
  vars.tfvars --> terraform plan -var=instance_type=t2.nano
2. If you have both terraform.tfvars and vars.auto.tfvars, then the instance_type file selected is the auto.tfvars file
