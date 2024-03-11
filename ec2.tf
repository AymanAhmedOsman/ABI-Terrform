
resource "aws_instance" "Front-end" {
    subnet_id = aws_subnet.public_1.id
    instance_type = "t2.micro"
    ami           = "ami-08d70e59c07c61a3a"
    vpc_security_group_ids = [aws_security_group.allow_ssh-http.id]
    
    key_name = aws_key_pair.ABI_ssh_key.key_name
    
    associate_public_ip_address = true


}

resource "aws_instance" "backend" {
    subnet_id = aws_subnet.public_2.id
    instance_type = "t2.micro"
    ami           = "ami-08d70e59c07c61a3a"
    vpc_security_group_ids = [aws_security_group.allow_ssh-http.id]
    key_name = aws_key_pair.ABI_ssh_key.key_name
    associate_public_ip_address = true



}
