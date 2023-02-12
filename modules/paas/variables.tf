locals {
    location = {
        DEV = "ap-northeast-1"
        STA = "ap-northeast-1"
        PRO = "ap-northeast-3"
    }
    env = {
        DEV = "dev"
        STA = "sta"
        PRO = "pro"
    }
    cidr = {
        DEV = "192.168.128"
        STA = ""
        PRO = ""
    }
}

data "aws_vpc" "main" {
    tags = {
        Name = "terraform-aws-vpc"
    }
}
data "aws_subnet" "public-a" {
    tags = {
        Name = "${local.env[terraform.workspace]}-public-subnet-a"
    }
}
data "aws_subnet" "public-c" {
    tags = {
        Name = "${local.env[terraform.workspace]}-public-subnet-c"
    }
}
data "aws_subnet" "public-d" {
    tags = {
        Name = "${local.env[terraform.workspace]}-public-subnet-d"
    }    
}
data "aws_subnet" "private-db-a" {
    tags = {
        Name = "${local.env[terraform.workspace]}-private-db-subnet-a"
    }    
}
data "aws_subnet" "private-db-c" {
    tags = {
        Name = "${local.env[terraform.workspace]}-private-db-subnet-c"
    }    
}
data "aws_subnet" "private-db-d" {
    tags = {
        Name = "${local.env[terraform.workspace]}-private-db-subnet-d"
    }    
}
data "aws_subnet" "private-main-a" {
    tags = {
        Name = "${local.env[terraform.workspace]}-private-main-subnet-a"
    }
}
data "aws_subnet" "private-main-c" {
    tags = {
        Name = "${local.env[terraform.workspace]}-private-main-subnet-c"
    }
}
data "aws_subnet" "private-main-d" {
    tags = {
        Name = "${local.env[terraform.workspace]}-private-main-subnet-d"
    }
}

data "aws_internet_gateway" "main" {
    tags = {
        Name = "${local.env[terraform.workspace]}-igw"
    }
}
