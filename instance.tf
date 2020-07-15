resource "aws_instance"  "wordpress" {
  ami           = "ami-d36916bc"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.subnet1.id
  key_name	= aws_key_pair.deployer.key_name
  security_groups =  [aws_security_group.secure1.id]
  vpc_security_group_ids = [aws_security_group.secure1.id]
  associate_public_ip_address = true
}

resource "aws_instance"  "mysql" {
  ami           = "ami-0af4f2ae8f9fac390"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.subnet2.id
  key_name     	= aws_key_pair.deployer.key_name
  security_groups =  [aws_security_group.secure2.id]
  vpc_security_group_ids = [aws_security_group.secure2.id]
  associate_public_ip_address = true
}