# --------> internet-gateways <------

resource "aws_internet_gateway" "my-ig" {
    vpc_id = aws_vpc.my-vpc.id
    tags = {
        Name = "my-ig"
    }
  
}