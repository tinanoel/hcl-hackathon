provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "main" {

   cidr_block = "10.0.0.0/16"
   tags = {

     Name = "Project VPC"
   }
}

resource "aws_subnet" "public_subnets" {
 count      = length(var.public_subnet_cidrs)
 vpc_id     = aws_vpc.main.id
 cidr_block = element(var.public_subnet_cidrs, count.index)
 availability_zone = element(var.azs, count.index)

 tags = {
   Name = "talari public subnets ${count.index + 1}"
 }
}

