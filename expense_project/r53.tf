resource "aws_route53_record" "expense" {
  zone_id = aws_route53_zone.primary.zone_id
  name    = "www.awsmohan.online"
  type    = "A"
  ttl     = 300
  records = [aws_eip.lb.public_ip]
}