output "subnet_id" {
    value = aws_subnet.main.id
}

output "vpc_id" {
    value = aws_vpc.created_vpc.id
}

output "route_table_id" {
    value = aws_route_table.created_route_table.id
}
