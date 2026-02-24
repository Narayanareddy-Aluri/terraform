#for_each using map
/*variable "instance_name" {
    type = map 
    default = {
        mangodb = "t3.micro"
        frontend = "t3.small"
        backend = "t3.small"
    }
}
*/


# This should be converted into set
variable "instances" {
    type = list
    default = ["mongodb", "redis"]
}

variable "zone_id" {
    default = "Z092938022D7QA1T8BW6Q"
}

variable "domain_name"{
    default = "narayanareddy.online"
}