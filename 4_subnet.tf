resource "aws_subnet" "subnet1" {
  vpc_id                  = aws_vpc.this.id
  cidr_block              = "10.0.0.0/19"
  map_public_ip_on_launch = true  # Set to true if you want a public subnet

  tags = {
    Name = "hipaa-subnet1"
  }
}

resource "aws_subnet" "subnet2" {
  vpc_id                  = aws_vpc.this.id
  cidr_block              = "10.0.32.0/19"
  map_public_ip_on_launch = false  # Set to false for a private subnet

  tags = {
    Name = "hipaa-subnet2"
  }
}
