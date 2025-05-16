provider "aws" {
    region = var.region
}

resource "aws_instance" "created_instance" {
    ami = var.ami_id
    subnet_id = var.subnet_id
    key_name = var.key_pair
    instance_type = var.instance_type

    tags = {
        Name = var.tag_name
    }
}