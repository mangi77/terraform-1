#--------> network <----------

resource "aws_route_table" "rt-pub-1" {
    vpc_id = aws_vpc.my-vpc.id
    route {
        cidr_block = "0.0.0.0/0"
         gateway_id = aws_internet_gateway.my-ig.id
    }
    tags = {
        name = "rt-pub-1"
    }
    }

resource "aws_route_table" "rt-pub-2" {
    vpc_id = aws_vpc.my-vpc.id
    route {
        cidr_block = "0.0.0.0/0"
         gateway_id = aws_internet_gateway.my-ig.id
    }
    tags = {
        name = "rt-pub-2"
    }
    }

resource "aws_route_table" "rt-pub-3" {
    vpc_id = aws_vpc.my-vpc.id
    route {
        cidr_block = "0.0.0.0/0"
         gateway_id = aws_internet_gateway.my-ig.id
    }
    tags = {
        name = "rt-pub-3"
    }
    }

resource "aws_route_table" "rt-pub-4" {
    vpc_id = aws_vpc.my-vpc.id
    route {
        cidr_block = "0.0.0.0/0"
         gateway_id = aws_internet_gateway.my-ig.id
    }
    tags = {
        name = "rt-pub-4"
    }
    }

resource "aws_route_table" "rt-pub-5" {
    vpc_id = aws_vpc.my-vpc.id
    route {
        cidr_block = "0.0.0.0/0"
         gateway_id = aws_internet_gateway.my-ig.id
    }
    tags = {
        name = "rt-pub-5"
    }
    }

resource "aws_route_table" "rt-pub-6" {
    vpc_id = aws_vpc.my-vpc.id
    route {
        cidr_block = "0.0.0.0/0"
         gateway_id = aws_internet_gateway.my-ig.id
    }
    tags = {
        name = "rt-pub-6"
    }
    }

#--------> resource "aws_route_table_association <-------

resource "aws_route_table_association" "public1" {
  subnet_id      = aws_subnet.pub-sub-1.id
  route_table_id = aws_route_table.rt-pub-1.id
}    

resource "aws_route_table_association" "public2" {
  subnet_id      = aws_subnet.pub-sub-2.id
  route_table_id = aws_route_table.rt-pub-2.id
}    

resource "aws_route_table_association" "public3" {
  subnet_id      = aws_subnet.pub-sub-3.id
  route_table_id = aws_route_table.rt-pub-3.id
}    

resource "aws_route_table_association" "public4" {
  subnet_id      = aws_subnet.pub-sub-4.id
  route_table_id = aws_route_table.rt-pub-4.id
}    

resource "aws_route_table_association" "public5" {
  subnet_id      = aws_subnet.pub-sub-5.id
  route_table_id = aws_route_table.rt-pub-5.id
}    

resource "aws_route_table_association" "public6" {
  subnet_id      = aws_subnet.pub-sub-6.id
  route_table_id = aws_route_table.rt-pub-6.id
}    