#Variables
REGION ?= us-east-2
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
	@terraform plan -var cluster_name=${CLUSTER_NAME} -var instance_type=${INSTANCE_TYPE} -var max_size=${MAX_SIZE} -var min_size=${MIN_SIZE} -var region=${REGION} -no-color -input=false

apply:
	@terraform apply -var cluster_name=${CLUSTER_NAME} -var instance_type=${INSTANCE_TYPE} -var max_size=${MAX_SIZE} -var min_size=${MIN_SIZE} -var region=${REGION}
