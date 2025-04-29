variable "aws_region" {}
variable "vpc_name" {}
variable "vpc_cidr" {}
variable "availability_zones" { type = list(string) }
variable "public_subnets" { type = list(string) }
variable "private_subnets" { type = list(string) }

variable "execution_role_name" {}
variable "app_name" {}
variable "ecs_cluster_name" {}
variable "task_family" {}
variable "container_image" {}
variable "container_port" {}
variable "cpu" {}
variable "memory" {}
variable "ecs_service_name" {}
variable "desired_count" {}

variable "tags" { type = map(string) }
