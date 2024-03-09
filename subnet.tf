#------------------------------------ public subnet ----------------------------------
resource "aws_subnet" "public_1" {

    vpc_id = aws_vpc.ABI.id
    availability_zone = "us-west-2a"
    cidr_block =  "10.0.0.0/24"

    tags = {
      name = "public_subnet"
    }
    
 
}

resource "aws_subnet" "public_2" {
    vpc_id = aws_vpc.ABI.id
    availability_zone = "us-west-2a"
    cidr_block =  "10.0.1.0/24"
    
    tags = {
      name = "public_subnet2"
    }
    
 
}



#---------------------------------- private Subnet ----------------------------------


resource "aws_subnet" "private_1" {
    vpc_id = aws_vpc.ABI.id
    availability_zone = "us-west-2a"
    cidr_block =  "10.0.2.0/24"
    
    tags = {
      name = "private_subnet1"
    }
    
 
}






#-------------------------------subnet group --------------------------

#resource "aws_db_subnet_group" "mydb-sngrp" {
#  name = "mydb-sngrp"
#  subnet_ids = [ aws_subnet.private_2.id, aws_subnet.subnet_b.id ]
  
#}