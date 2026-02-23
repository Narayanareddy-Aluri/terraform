resource "aws_instance" "terraform" {
  ami                     = "ami-0220d79f3f480ecf5"
  instance_type           = "t3.micro"
 
   tags = {
    Environment = "dev"
    Project = "Roboshop"
    Name = "nodejs"

  }
}  

resource "aws_security_group" "allow_tls" {
  name        = "MYSG"
  description = "Allow TLS inbound traffic and all outbound traffic"
       
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  tags = {
    Name = "MYSG"
  }
}