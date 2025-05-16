variable "region" {
    description = "region to launch the ec2 instance"
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

variable "tag_name" {
    description = "The name of the tag for the ec2 instance"
}