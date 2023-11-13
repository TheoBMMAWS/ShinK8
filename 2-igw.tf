resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.istio.id

  tags = {
    Name = "igw"
  }
}
