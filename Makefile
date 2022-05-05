#Variables
ZONE ?= dev
CLUSTER_NAME ?= webservers-stage
INSTANCE_TYPE ?= t2.micro
MIN_SIZE ?= 1
MAX_SIZE ?= 1

format:
	@terraform fmt -check

init:
	@terraform init

validate:
	@terraform validate -no-color

checkov:
	@checkov -d /home/github/_work/makefileDemo/makefileDemo

plan:
	@terraform plan -var zone=${ZONE} -no-color -input=false

apply:
	@terraform apply -var zone=${ZONE} -auto-approve -input=false
