resource "aws_eip" "task-vpc-eip" {
  
}

resource "aws_nat_gateway" "example" {
  allocation_id = aws_eip.task-vpc-eip.id
  subnet_id     = var.subnet_id
  tags = {
    Name = "task-vpc-nat-gw"
  }
}