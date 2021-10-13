output "route53_record_ids" {
  value = aws_route53_record.this.*.id
}
