provider "aws" {
  region = "us-west-2"
}

module "ecs-alb" {
  admin_cidr_ingress = var.admin_cidr_ingress
  source             = "./ecs-alb"
}

module "eks" {
  source = "./eks"
}

module "elb" {
  source   = "./elb"
  key_name = var.key_name
}

module "sagemaker" {
  source = "./sagemaker"
}

module "lambda-file-systems" {
  source = "./lambda-file-systems"
}
