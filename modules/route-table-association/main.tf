resource "aws_route_table_association" "public1" {
  
  subnet_id = var.pub1_id

  route_table_id = var.rt_gw_id

}



resource "aws_route_table_association" "private1" {
  
  subnet_id = var.pri1_id

  route_table_id = var.rt_nat_id

}

