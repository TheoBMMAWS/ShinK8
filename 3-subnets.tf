resource "aws_subnet" "private-eu-west-1a" {
  vpc_id            = aws_vpc.istio.id
  cidr_block        = "10.52.11.0/24"
  availability_zone = "eu-west-1a"

  tags = {
    "Name"                                      = "private-eu-west-1a"
    "kubernetes.io/role/internal-elb"           = "1"
    "kubernetes.io/cluster/api" = "owned"
  }
}

resource "aws_subnet" "private-eu-west-1b" {
  vpc_id            = aws_vpc.istio.id
  cidr_block        = "10.52.12.0/24"
  availability_zone = "eu-west-1b"

  tags = {
    "Name"                                      = "private-eu-west-1b"
    "kubernetes.io/role/internal-elb"           = "1"
    "kubernetes.io/cluster/istio" = "owned"
  }
}

resource "aws_subnet" "public-eu-west-1a" {
  vpc_id                  = aws_vpc.istio.id
  cidr_block              = "10.52.1.0/24"
  availability_zone       = "eu-west-1a"



  
  map_public_ip_on_launch = true

  tags = {
    "Name"                                      = "public-eu-west-1a"
    "kubernetes.io/role/elb"                    = "1"
    "kubernetes.io/cluster/istio" = "owned"
  }
}

resource "aws_subnet" "public-eu-west-1b" {
  vpc_id                  = aws_vpc.istio.id
  cidr_block              = "10.52.2.0/24"
  availability_zone       = "eu-west-1b"
  map_public_ip_on_launch = true

  tags = {
    "Name"                                      = "public-eu-west-1b"
    "kubernetes.io/role/elb"                    = "1"
    "kubernetes.io/cluster/istio" = "owned"
  }
}
