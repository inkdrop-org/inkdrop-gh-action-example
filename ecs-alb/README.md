# ECS with ALB example

This example shows how to launch an ECS service fronted with Application Load Balancer.

The example uses latest CoreOS Stable AMIs.

To run, configure your AWS provider as described in https://www.terraform.io/docs/providers/aws/index.html

## Get up and running

Planning phase

```
terraform plan \
	-var admin_cidr_ingress='"{your_ip_address}/32"' \
	-var key_name={your_key_name}
```

Apply phase

```
terraform apply \
	-var admin_cidr_ingress='"{your_ip_address}/32"' \
	-var key_name={your_key_name}
```

Alternatively to using `-var` with each command, the `terraform.template.tfvars` file can be copied to `terraform.tfvars` and updated.

Once the stack is created, wait for a few minutes and test the stack by launching a browser with the ALB url.

<!-- markdownlint-disable-next-line no-trailing-punctuation -->
## Destroy :boom:

```
terraform destroy
```
