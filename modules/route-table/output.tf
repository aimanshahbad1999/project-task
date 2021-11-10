output "rt-gw-id"{
    value = aws_route_table.public.id
}

output "nat-id"{
    value = aws_route_table.private.id
}