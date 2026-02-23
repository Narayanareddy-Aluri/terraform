variable "ami_id" {
    type = string
    default = "ami-0220d79f3f480ecf5"
}

variable "instance_type" {
    type = string
    default = "t3.micro"
}

variable "ec2_tags" {
    type = map
    default = {
    Environment = "dev"
    Project = "Roboshop"
    Name = "nodejs"
    }
}

variable "sg_name" {
    type= string
    default = "MYSG"
}

variable "sg_description" {
    type = string
    default = "Allow TLS inbound traffic and all outbound traffic"
}

variable "sg_from_port" {
    default = 0
}
variable "sg_to_port" {
    default = 0
}

variable "cidr_blocks" {
    type = list
    default = ["0.0.0.0/0"]
}
variable "sg_tags" {
    type = map
    default = {
    Name = "MYSG"
    Environment = "dev"
    Project = "Roboshop"
    }
}