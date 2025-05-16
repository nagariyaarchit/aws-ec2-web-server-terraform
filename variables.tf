variable "region" {
    description = "region to launch the resources"
}

variable "ami_id" {
    description = "AMI ID of the ec2 instance you want to deploy"
}

variable "instance_type" {
    description = "The size of the ec2 instance you wish to deploy"
}

variable "key_pair" {
    description = "The key pair that is going to be used to create ec2 instance"
}

variable "subnet_id" {
    description = "The subnet the ec2 instance is going to be a part of"
}

variable "tag_name_instance" {
    description = "The name of the tag for the ec2 instance"
}

variable "cidr_block_vpc" {
    description = "The cidr block of the created vpc"
}

variable "tag_name_vpc" {
    description = "The name of the tag of the vpc"
}

variable "cidr_block_subnet" {
    description = "The cidr block of the created subnet within the created vpc"
}