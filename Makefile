#Variables
REGION ?= us-east-2
CLUSTER_NAME ?= webservers-stage
INSTANCE_TYPE ?= t2.micro
MIN_SIZE ?= 1
MAX_SIZE ?= 1

init:
	@terraform init

apply:
  	@terraform apply -var region="us-east-2" -var cluster_name="webservers-stage" -var instance_type="t2.micro" -var max_size=1 -var min_size=1


