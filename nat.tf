#esource "aws_eip" "nat_ip" {

#    tags = {
#    Name = "nat_ip"
#  }
#}
#resource "aws_nat_gateway" "ABI" {
#  allocation_id = aws_eip.nat_ip.id
#  subnet_id     = aws_subnet.public_1.id
#    tags = {
#    Name = "ABI_nat_gatway"
#  }
#}