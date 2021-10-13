output "route53_record_names" {
  value = aws_route53_record.this.*.name
}
