output "vpc" {
  description = "A map of vpc attributes: name, id, cidr, azs, private_subnet_cidr_blocks, private_subnet_ids, public_subnet_cidr_blocks, public_subnet_ids, default_security_group_id db_subnet_group_name, db_subnet_group_id."

  // NOTE: these are declared here -
  // https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/latest?tab=outputs
  value = {
    name = module.vpc.name
    id   = module.vpc.vpc_id
    cidr = module.vpc.vpc_cidr_block
    azs  = module.vpc.azs

    private_subnet_cidr_blocks = module.vpc.private_subnets_cidr_blocks
    private_subnet_ids         = module.vpc.private_subnets

    public_subnet_cidr_blocks = module.vpc.public_subnets_cidr_blocks
    public_subnet_ids         = module.vpc.public_subnets

    default_security_group_id = aws_security_group.runner.id
    db_subnet_group_name      = module.vpc.database_subnet_group_name
    db_subnet_group_id        = module.vpc.database_subnet_group
  }

}
