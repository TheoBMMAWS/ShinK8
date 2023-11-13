resource "aws_vpc" "istio" {
  cidr_block = "10.52.0.0/16"

  tags = {
    Name = "istio"
  }
}
