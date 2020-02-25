# resource "aws_route53_record" "this" {
#   count   = "2"
#   zone_id = var.route53_hosted_zone_id
#   name    = "${lookup(var.instance_module_tags [count.index], "Name")}"
#   type    = "A"
#   ttl     = var.route53_a_record_ttl
#   records = ["${element(var.instance_module_private_ip, count.index)}"]
# }


# resource "aws_route53_record" "bastion" {
#   count   = "1"
#   zone_id = "Z05677131XZPSFHTW8OUT"
#   name    = "${lookup(var.instance_module_tags[count.index], "Name")}"
#   type    = "A"
#   ttl     = "5"
#   records = ["${element(var.instance_module_private_ip, count.index)}"]
# }