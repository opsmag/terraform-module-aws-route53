output "zone_id" {
  value       = "${aws_route53_zone.this.zone_id}"
  description = "The hosted zone id"
}

output "zone_name" {
  value       = "${aws_route53_zone.this.name}"
  description = "The hosted zone name"
}
