output "aws_instance_arn" {
    value = aws_instance.created_instance.arn
}

output "aws_instance_id" {
    value = aws_instance.created_instance.id
}

output "aws_instance_tags" {
    value = aws_instance.created_instance.tags
}