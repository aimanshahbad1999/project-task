resource "aws_route53_zone" "dev" {
  name = "repulic.co"

  tags = {
    Environment = "replublic"
  }
}

resource "aws_route53_record" "dev-ns" {
  zone_id = aws_route53_zone.dev.zone_id
  name    = " zbx.adm.republic.co"
  type    = "CNAME"
  ttl     = "300"
  records = ["${var.dns_name}",]
}
