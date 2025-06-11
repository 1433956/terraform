resource "aws_route53_record" "www" {
count = length(var.instance)
  zone_id = "Z04391491005OGSNXNQQX"
  name    = "${var.instance[count.index]}.${var.domain_name}"
  allow_overwrite= true
  type    = "A"
  ttl     = 1
  records = [aws_instance.expese[count.index].private_ip]
}