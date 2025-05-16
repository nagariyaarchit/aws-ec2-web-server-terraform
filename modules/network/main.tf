provider "aws" {
    region = var.region
}

resource "aws_vpc" "created_vpc" {
    cidr_block = var.cidr_block_vpc
    tags = {
        Name = var.tag_name
    }
}

resource "aws_subnet" "main" {
    vpc_id = aws_vpc.created_vpc.id
    cidr_block = var.cidr_block_subnet
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.created_vpc.id
}

resource "aws_route_table" "created_route_table" {
    vpc_id = aws_vpc.created_vpc.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.gw.id  
    }
}

resource "aws_route_table_association" "subnet_association" {
  subnet_id      = aws_subnet.main.id
  route_table_id = aws_route_table.created_route_table.id
}
