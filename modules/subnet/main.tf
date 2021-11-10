resource "aws_subnet" "public-subnet1" {
  vpc_id     = var.vpc_id
  cidr_block = var.public_subnet1_cidr
  availability_zone = var.public_subnet1_az

  tags = {
    Name = var.public_subnet1_name
  }
}





resource "aws_subnet" "private-subnet1" {
  vpc_id     = var.vpc_id
  cidr_block = var.private_subnet1_cidr
  availability_zone = var.private_subnet1_az
  tags = {
    Name = var.private_subnet1_name
  }
}

