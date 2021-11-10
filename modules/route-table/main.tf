


resource "aws_route_table" "public" {

  vpc_id = var.vpc_id

  route {
    cidr_block = "0.0.0.0/0"

    gateway_id = var.task-vpc-ig
  }

  tags = {
    Name = var.rt-task-vpc-ig
  }
}


resource "aws_route_table" "private" {
  vpc_id = var.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = var.nat_id
  }

  tags = {
    Name = var.rt-task-vpc-nat
  }
}