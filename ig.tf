resource "aws_internet_gateway" "gw" {
    vpc_id = aws_vpc.ABI.id

    tags = {
        Name = "gw"
  }

  
}