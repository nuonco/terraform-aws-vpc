# terraform-aws-vpc

Terraform module for creating a VPC to install BYOPC installs into.

## Usage

```hcl
module "nuon-vpc" {
  source = "nuonco/vpc/aws"

  name = "byovpc"

  cidr = "10.128.0.0/16"

  # public subnets can be smaller so we evenly break down a /24
  # 10.128.0.192/26 finishes  the /24 segementation
  # you can see the math for this /16 here https://www.davidc.net/sites/default/subnets/subnets.html?network=10.128.0.0&mask=16&division=23.ff3100
  public_subnets   = ["10.128.0.0/26", "10.128.0.64/26", "10.128.0.128/26"]
  private_subnets  = ["10.128.128.0/24", "10.128.129.0/24", "10.128.130.0/24"]
  database_subnets = ["10.128.131.0/24", "10.128.132.0/24"]
}
```
