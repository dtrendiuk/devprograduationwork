# cloudflare infrastructure
resource "cloudflare_record" "cname-green" {
  zone_id = var.cloudflare_zone_id
  name    = var.domain
  value   = aws_alb.dev_pro_alb_green.dns_name
  type    = "CNAME"
  proxied = true
}
/*
resource "cloudflare_record" "cname-blue" {
  zone_id = var.cloudflare_zone_id
  name    = var.domain
  value   = aws_alb.dev_pro_alb_blue.dns_name
  type    = "CNAME"
  proxied = true
}
*/
