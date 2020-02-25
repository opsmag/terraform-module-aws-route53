resource "aws_route53_zone" "this" {
  name = var.name

  vpc {
    vpc_id = var.main_vpc
  }

  lifecycle {
    ignore_changes = [vpc]
  }

  tags = {
    "Environment" = var.environment
    "ManagedBy"   = "Terraform"
  }
}

resource "aws_route53_zone_association" "secondary" {
  count   = length(var.secondary_vpcs)
  zone_id = aws_route53_zone.this.zone_id
  vpc_id  = "var.secondary_vpcs[count.index]"
}
