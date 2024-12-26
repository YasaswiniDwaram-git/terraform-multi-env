resource "aws_route53_record" "for_each" {
  for_each = aws_instance.for_each
  zone_id = var.zone_id
  name    = each.key == "frontend-${var.environment}" ? var.domain_name : "${each.key}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = startswith (each.key , "frontend") ? [each.value.public_ip] : [each.value.private_ip]
  allow_overwrite = true
}