#Variables
ZONE ?= dev

format:
	@terraform fmt -check

init:
	@terraform init

validate:
	@terraform validate -no-color

checkov:
	@checkov -d /home/github/_work/makefileDemo/makefileDemo
	
tfsec:
	@tfsec ./

plan:
	@terraform plan -var zone=${ZONE} -no-color -input=false

apply:
	@terraform apply -var zone=${ZONE} -auto-approve -input=false
