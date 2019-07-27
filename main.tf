


module "VPC" {
    source = "./modules/vpc"
    vpc = "${var.vpc}"
    environment = "${var.environment}"
}

module "SUBNET" {
    source = "./modules/subnet"
    vpc_id      = "${module.VPC.vpc_id}"
    environment  = "${var.environment}"
    public_subnets = "${var.public_subnets}"
    private_subnets = "${var.private_subnets}"
}