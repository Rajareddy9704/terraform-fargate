module "network" {
  source = "./modules/network"

  vpc_name           = var.vpc_name
  vpc_cidr           = var.vpc_cidr
  availability_zones = var.availability_zones
  public_subnets     = var.public_subnets
  private_subnets    = var.private_subnets
  tags               = var.tags
}

module "iam" {
  source              = "./modules/iam"
  execution_role_name = var.execution_role_name
  tags                = var.tags
}

module "logs" {
  source   = "./modules/logs"
  app_name = var.app_name
  tags     = var.tags
}

module "ecs" {
  source = "./modules/ecs"

  app_name            = var.app_name
  ecs_cluster_name    = var.ecs_cluster_name
  task_family         = var.task_family
  container_image     = var.container_image
  container_port      = var.container_port
  cpu                 = var.cpu
  memory              = var.memory
  ecs_service_name    = var.ecs_service_name
  desired_count       = var.desired_count

  subnet_ids          = module.network.private_subnets
  vpc_id              = module.network.vpc_id
  log_group_name      = module.logs.log_group_name
  execution_role_arn  = module.iam.execution_role_arn
  aws_region          = var.aws_region
  tags                = var.tags
}

output "ecs_service_name" {
  value = module.ecs.ecs_service_name
}

output "vpc_id" {
  value = module.network.vpc_id
}