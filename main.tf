provider "aws" {
    region = var.region
}

module "network" {
    source = "./modules/network"
    region = var.region
    cidr_block_vpc = var.cidr_block_vpc
    cidr_block_subnet = var.cidr_block_subnet
    tag_name = var.tag_name_vpc
}

module "ec2_instance" {
    source = "./modules/compute"
    region = var.region
    ami_id = var.ami_id
    instance_type = var.instance_type
    key_pair = var.key_pair
    subnet_id = module.network.subnet_id
    tag_name = var.tag_name_instance
}