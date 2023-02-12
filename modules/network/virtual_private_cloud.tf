resource "aws_vpc" "main" {
    cidr_block = "${local.cidr[terraform.workspace]}.0/24"
    tags = {
        Name = "terraform-aws-vpc"
    }
}

resource "aws_subnet" "public-a" {
    vpc_id = "${aws_vpc.main.id}"
    cidr_block = "${local.cidr[terraform.workspace]}.0/28" 
    availability_zone = "${local.location[terraform.workspace]}a"
    tags = {
        Name = "${local.env[terraform.workspace]}-public-subnet-a"
    }
}

resource "aws_subnet" "public-c" {
    vpc_id = "${aws_vpc.main.id}"
    cidr_block = "${local.cidr[terraform.workspace]}.16/28" 
    availability_zone = "${local.location[terraform.workspace]}c"
    tags = {
        Name = "${local.env[terraform.workspace]}-public-subnet-c"
    }
}

resource "aws_subnet" "public-d" {
    vpc_id = "${aws_vpc.main.id}"
    cidr_block = "${local.cidr[terraform.workspace]}.32/28" 
    availability_zone = "${local.location[terraform.workspace]}d"
    tags = {
        Name = "${local.env[terraform.workspace]}-public-subnet-d"
    }
}

resource "aws_subnet" "private-db-a" {
    vpc_id = "${aws_vpc.main.id}"
    cidr_block = "${local.cidr[terraform.workspace]}.48/28" 
    availability_zone = "${local.location[terraform.workspace]}a"
    tags = {
        Name = "${local.env[terraform.workspace]}-private-db-subnet-a"
    }
}

resource "aws_subnet" "private-db-c" {
    vpc_id = "${aws_vpc.main.id}"
    cidr_block = "${local.cidr[terraform.workspace]}.64/28" 
    availability_zone = "${local.location[terraform.workspace]}c"
    tags = {
        Name = "${local.env[terraform.workspace]}-private-db-subnet-c"
    }
}

resource "aws_subnet" "private-db-d" {
    vpc_id = "${aws_vpc.main.id}"
    cidr_block = "${local.cidr[terraform.workspace]}.80/28" 
    availability_zone = "${local.location[terraform.workspace]}d"
    tags = {
        Name = "${local.env[terraform.workspace]}-private-db-subnet-d"
    }
}

resource "aws_subnet" "private-main-a" {
    vpc_id = "${aws_vpc.main.id}"
    cidr_block = "${local.cidr[terraform.workspace]}.96/27" 
    availability_zone = "${local.location[terraform.workspace]}a"
    tags = {
        Name = "${local.env[terraform.workspace]}-private-main-subnet-a"
    }
}

resource "aws_subnet" "private-main-c" {
    vpc_id = "${aws_vpc.main.id}"
    cidr_block = "${local.cidr[terraform.workspace]}.128/27" 
    availability_zone = "${local.location[terraform.workspace]}c"
    tags = {
        Name = "${local.env[terraform.workspace]}-private-main-subnet-c"
    }
}

resource "aws_subnet" "private-main-d" {
    vpc_id = "${aws_vpc.main.id}"
    cidr_block = "${local.cidr[terraform.workspace]}.160/27" 
    availability_zone = "${local.location[terraform.workspace]}d"
    tags = {
        Name = "${local.env[terraform.workspace]}-private-main-subnet-d"
    }
}
