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

data "aws_vpc" "main" {}
data "aws_subnet" "public-a" {}
data "aws_subnet" "public-c" {}
data "aws_subnet" "public-d" {}
data "aws_subnet" "private-db-a" {}
data "aws_subnet" "private-db-c" {}
data "aws_subnet" "private-db-d" {}
data "aws_subnet" "private-main-a" {}
data "aws_subnet" "private-main-c" {}
data "aws_subnet" "private-main-d" {}
