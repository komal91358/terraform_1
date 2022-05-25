resource "aws_vpc" "vpc1" {
 cidr_block = "10.10.0.0/16"
 tags = {
   "Name" = "my_vpc"
}
}

resource "aws_subnet" "private_subnet" {
vpc_id = aws_vpc.vpc1.id
cidr_block = "10.10.0.0/20"
availability_zone = "us-east-1a"
tags = {
"Name" = "private_subnet"

}
}

resource "aws_subnet" "public_subnet" {
vpc_id = aws_vpc.vpc1.id
cidr_block = "10.10.16.0/20"
availability_zone = "us-east-1b"
map_public_ip_on_launch = true
tags = {
"Name" = "public_subnet"

}
}

