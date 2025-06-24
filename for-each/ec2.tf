resource "aws_instance" "expense" {
  for_each               = var.instance_name # each.key and each.value
  ami                    = var.image_id
  vpc_security_group_ids = ["sg-rhwihyry0"]
  instance_type          = each.value
  tags = merge(
    var.common_tags,
    {
      Name   = each.key
      Module = each.key

    }
  )
}