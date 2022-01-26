# cloudflare green infrastructure
resource "cloudflare_record" "cname-green" {
  count = var.enable_green_deployment_cloudflare ? 1 : 0

  zone_id = var.cloudflare_zone_id
  name    = var.domain
  value   = aws_alb.dev_pro_alb_green.dns_name
  type    = "CNAME"
  proxied = true
}

# cloudflare blue infrastructure
resource "cloudflare_record" "cname-blue" {
  count = var.enable_blue_deployment_cloudflare ? 1 : 0

  zone_id = var.cloudflare_zone_id
  name    = var.domain
  value   = aws_alb.dev_pro_alb_blue.dns_name
  type    = "CNAME"
  proxied = true
}
