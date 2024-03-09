resource "aws_vpc" "ABI" {    

    cidr_block =  "10.0.0.0/16"
    enable_dns_support = true

    tags = {
      name = "ITI"
    }
  
}