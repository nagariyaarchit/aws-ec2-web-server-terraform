variable "region" {
    description = "Region to host the vpc in"
}    
    
variable "cidr_block_vpc" {
    description = "The cidr block of the created vpc"
}

variable "tag_name" {
    description = "The name of the tag of the vpc"
}

variable "cidr_block_subnet" {
    description = "The cidr block of the created subnet within the created vpc"
}