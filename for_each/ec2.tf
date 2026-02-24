resource "aws_instance" "terraform" {
  #for_each = var.instance_name
  for_each = toset(var.instances)
  ami                     = "ami-0220d79f3f480ecf5"
  instance_type           = "t3.micro"
 vpc_security_group_ids = [data.aws_security_group.allow_tls.id]  # attach the SG to ec2 instance
 
   tags = {
    Name = each.key
    Environment = "dev"
    Project = "Roboshop"
  }
}  

data "aws_security_group" "allow_tls" {
  name        = "MYSG"
}