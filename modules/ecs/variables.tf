variable "app_name" {}
variable "ecs_cluster_name" {}
variable "task_family" {}
variable "container_image" {}
variable "container_port" {}
variable "cpu" {}
variable "memory" {}
variable "ecs_service_name" {}
variable "desired_count" {}
variable "subnet_ids" { type = list(string) }
variable "vpc_id" {}
variable "log_group_name" {}
variable "execution_role_arn" {}
variable "aws_region" {}
variable "tags" { type = map(string) }
