aws_region         = "eu-west-2"
vpc_name           = "fargate-vpc"
vpc_cidr           = "10.0.0.0/16"
availability_zones = ["eu-west-2a", "eu-west-2b", "eu-west-2c"]
public_subnets     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
private_subnets    = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]


execution_role_name = "ecsTaskExecutionRole"
app_name            = "myapp"
ecs_cluster_name    = "fargate-cluster"
task_family         = "myapp-task"
container_image     = "nginx:latest"
container_port      = 80
cpu                 = "256"
memory              = "512"
ecs_service_name    = "myapp-service"
desired_count       = 1

tags = {
  Environment = "dev"
  Project     = "fargate-sample"
}
