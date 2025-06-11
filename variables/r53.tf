# resource "aws_route53_record" "www" {
#     count=3
#   zone_id = var.zone_id
#   name    = "${var.instance[count.index]}.${var.domain_name}"
#   type    = "A"
#   ttl     = 1
#   records = [aws_instance.expese[count.index].private]
# }
resource "aws_route53_record" "www" {
  for_each = aws_instance.expese
  allow_overwrite = true
  zone_id = var.zone_id
  name    = "${each.key}.${var.domain_name}" 
  type    = "A"
  ttl     = 1
  records = [each.value.private_ip]
}

