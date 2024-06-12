data "aws_cloudfront_distribution" "this" {
  id = var.distribution_id
}

data "aws_route53_zone" "this" {
  name = var.zone_name
}

resource "aws_route53_record" "this" {
  for_each = { for a in var.aliases : a => a }
  name     = each.key
  type     = "A"
  zone_id  = data.aws_route53_zone.this.zone_id
  alias {
    evaluate_target_health = false
    name                   = data.aws_cloudfront_distribution.this.domain_name
    zone_id                = data.aws_cloudfront_distribution.this.hosted_zone_id
  }
}
