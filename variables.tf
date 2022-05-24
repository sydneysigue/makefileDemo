# ---------------------------------------------------------------------------------------------------------------------
# ENVIRONMENT VARIABLES
# Define these secrets as environment variables
# ---------------------------------------------------------------------------------------------------------------------

# AWS_ACCESS_KEY_ID
# AWS_SECRET_ACCESS_KEY

# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# ---------------------------------------------------------------------------------------------------------------------
variable "zone" {}

#Variables
variable "webserver_cluster" {
  description = "the region the resources deploy in"
  type = map(map(string))
  default = {
    dev = {
      region                            = "us-east-2"
      cluster_name                      = "demo-makefile-001"
      instance_type                     = "t2.micro"
      min_size                          = "1"
      max_size                          = "1"
    }
    stage = {
      region                            = "us-east-2"
      cluster_name                      = "demo-stage"
      instance_type                     = "t2.small"
      min_size                          = "2"
      max_size                          = "2"
    }
    prod = {
      region                            = "us-east-2"
      cluster_name                      = "demo-prod"
      instance_type                     = "t2.medium"
      min_size                          = "4"
      max_size                          = "4"
    }
    }

}


# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# ---------------------------------------------------------------------------------------------------------------------

variable "server_port" {
  description = "The port the server will use for HTTP requests"
  type        = number
  default     = 8080
}

variable "elb_port" {
  description = "The port the ELB will use for HTTP requests"
  type        = number
  default     = 80
}
