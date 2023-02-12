resource "aws_vpc" "main" {
    cidr_block = "${local.cidr[terraform.workspace].0/24}"
    tags = {
        Name = "Terraform-aws"
    }
}

resource "aws_subnet" "public-a" {
    vpc_id = aws_vpc.main.id
    cidr_block = "${local.cidr[terraform.workspace]}.0/28" 
    availability_zone = "${local.location[terraform.workspace]}a}"
}

resource "aws_subnet" "public-a" {
    vpc_id = aws_vpc.main.id
    cidr_block = "${local.cidr[terraform.workspace]}.16/28" 
    availability_zone = "${local.location[terraform.workspace]}b}"
}

resource "aws_subnet" "public-a" {
    vpc_id = aws_vpc.main.id
    cidr_block = "${local.cidr[terraform.workspace]}.32/28" 
    availability_zone = "${local.location[terraform.workspace]}c}"
}

resource "aws_subnet" "public-db-a" {
    vpc_id = aws_vpc.main.id
    cidr_block = "${local.cidr[terraform.workspace]}.48/28" 
    availability_zone = "${local.location[terraform.workspace]}a}"
}

resource "aws_subnet" "public-db-b" {
    vpc_id = aws_vpc.main.id
    cidr_block = "${local.cidr[terraform.workspace]}.62/28" 
    availability_zone = "${local.location[terraform.workspace]}b}"
}

resource "aws_subnet" "public-db-c" {
    vpc_id = aws_vpc.main.id
    cidr_block = "${local.cidr[terraform.workspace]}.80/28" 
    availability_zone = "${local.location[terraform.workspace]}c}"
}

resource "aws_subnet" "public-main-a" {
    vpc_id = aws_vpc.main.id
    cidr_block = "${local.cidr[terraform.workspace]}.96/27" 
    availability_zone = "${local.location[terraform.workspace]}a}"
}

resource "aws_subnet" "public-main-b" {
    vpc_id = aws_vpc.main.id
    cidr_block = "${local.cidr[terraform.workspace]}.128/27" 
    availability_zone = "${local.location[terraform.workspace]}b}"
}

resource "aws_subnet" "public-main-c" {
    vpc_id = aws_vpc.main.id
    cidr_block = "${local.cidr[terraform.workspace]}.160/27" 
    availability_zone = "${local.location[terraform.workspace]}c}"
}
