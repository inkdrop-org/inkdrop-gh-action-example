variable "admin_cidr_ingress" {
  description = "CIDR to allow tcp/22 ingress to EC2 instance"
  default     = "1.2.3.4/32"
}

variable "key_name" {
    description = "The name of the EC2 Key Pair to allow SSH access to the ECS instances"
    default = "terraform-aws-provider-example"
}