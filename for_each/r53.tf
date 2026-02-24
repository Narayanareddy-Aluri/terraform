resource "aws_route53_record" "www" {
  count = 3
  zone_id = var.zone_id
  name    = "${var.instance_name [count.index]}.${var.domain_name}" #frontend.narayanareddy.online
  type    = "A"
  ttl     = 1
  records = [aws_instance.terraform[count.index].private_ip]
}