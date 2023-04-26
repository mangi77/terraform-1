#-----------> resource <------------

resource "aws_vpc" "my-vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"
  enable_dns_support = "true"      #gives you an internal domain name
enable_dns_hostnames = "true"      #gives you an internal host name
  tags = {
    Name = "my-vpc"
  }
}


#---------> public subnet in diff. availibility zone <--------
resource "aws_subnet" "pub-sub-1" {
  vpc_id     = aws_vpc.my-vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name = "pub-sub-1"
  }
}
resource "aws_subnet" "pub-sub-2" {
  vpc_id     = aws_vpc.my-vpc.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name = "pub-sub-2"
  }
}
resource "aws_subnet" "pub-sub-3" {
  vpc_id     = aws_vpc.my-vpc.id
  cidr_block = "10.0.3.0/24"
  availability_zone = "us-east-1b"
  tags = {
    Name = "pub-sub-3"
  }
}
resource "aws_subnet" "pub-sub-4" {
  vpc_id     = aws_vpc.my-vpc.id
  cidr_block = "10.0.4.0/24"
  availability_zone = "us-east-1b"
  tags = {
    Name = "pub-sub-4"
  }
}
resource "aws_subnet" "pub-sub-5" {
  vpc_id     = aws_vpc.my-vpc.id
  cidr_block = "10.0.5.0/24"
  availability_zone = "us-east-1c"
  tags = {
    Name = "pub-sub-5"
  }
}
resource "aws_subnet" "pub-sub-6" {
  vpc_id     = aws_vpc.my-vpc.id
  cidr_block = "10.0.6.0/24"
  availability_zone = "us-east-1c"
  tags = {
    Name = "pub-sub-6"
  }
}



#---------> private subnet in diff. availibility zone <--------
resource "aws_subnet" "pvt-sub-1" {
  vpc_id     = aws_vpc.my-vpc.id
  cidr_block = "10.0.7.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name = "pvt-sub-1"
  }
}
resource "aws_subnet" "pvt-sub-2" {
  vpc_id     = aws_vpc.my-vpc.id
  cidr_block = "10.0.8.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name = "pvt-sub-2"
  }
}
resource "aws_subnet" "pvt-sub-3" {
  vpc_id     = aws_vpc.my-vpc.id
  cidr_block = "10.0.9.0/24"
  availability_zone = "us-east-1b"
  tags = {
    Name = "pvt-sub-3"
  }
}
resource "aws_subnet" "pvt-sub-4" {
  vpc_id     = aws_vpc.my-vpc.id
  cidr_block = "10.0.10.0/24"
  availability_zone = "us-east-1b"
  tags = {
    Name = "pvt-sub-4"
  }
}

resource "aws_subnet" "pvt-sub-5" {
  vpc_id     = aws_vpc.my-vpc.id
  cidr_block = "10.0.11.0/24"
  availability_zone = "us-east-1c"
  tags = {
    Name = "pvt-sub-5"
  }
}

resource "aws_subnet" "pvt-sub-6" {
  vpc_id     = aws_vpc.my-vpc.id
  cidr_block = "10.0.12.0/24"
  availability_zone = "us-east-1c"
  tags = {
    Name = "pvt-sub-6"
  }
}
