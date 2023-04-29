module "vpc" {
  source = "./modules/services/vpc"
  vpc_cidr_block = "10.0.0.0/16"
  vpc_name = "hso-2-vpc"
}

module "pub_subnet_a" {
  source = "./modules/services/public_subnets"
  name = "pub_subnet_a"
  vpc_id = "${module.vpc.id}"
  cidr_block = "10.0.0.0/24"
  az = "us-east-1a"
}
module "pub_subnet_b" {
  source = "./modules/services/public_subnets"
  name = "pub_subnet_b"
  vpc_id = "${module.vpc.id}"
  cidr_block = "10.0.1.0/24"
  az = "us-east-1b"
}