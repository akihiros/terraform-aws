resource "aws_route_table" "public" {
    vpc_id = aws_vpc.main.id
    route{
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.main.id
    }
    tags = {
        Name = "${local.env[terraform.workspace]}-public-rtb"
    }
}

resource "aws_route_table_association" "public-a" {
    subnet_id = aws_subnet.public-a.id
    route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "public-c" {
    subnet_id = aws_subnet.public-c.id
    route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "public-d" {
    subnet_id = aws_subnet.public-d.id
    route_table_id = aws_route_table.public.id
}

resource "aws_route_table" "private-db" {
    vpc_id = aws_vpc.main.id
    route{
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.main.id
    }
    tags = {
        Name = "${local.env[terraform.workspace]}-private-db-rtb"
    }
}

resource "aws_route_table_association" "private-db-a" {
    subnet_id = aws_subnet.private-db-a.id
    route_table_id = aws_route_table.private-db.id
}

resource "aws_route_table_association" "private-db-c" {
    subnet_id = aws_subnet.private-db-c.id
    route_table_id = aws_route_table.private-db.id
}

resource "aws_route_table_association" "private-db-d" {
    subnet_id = aws_subnet.private-db-d.id
    route_table_id = aws_route_table.private-db.id
}

resource "aws_route_table" "private-main" {
    vpc_id = aws_vpc.main.id
    route{
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.main.id
    }
    tags = {
        Name = "${local.env[terraform.workspace]}-private-main-rtb"
    }
}

resource "aws_route_table_association" "private-main-a" {
    subnet_id = aws_subnet.private-main-a.id
    route_table_id = aws_route_table.private-main.id
}

resource "aws_route_table_association" "private-main-c" {
    subnet_id = aws_subnet.private-main-c.id
    route_table_id = aws_route_table.private-main.id
}

resource "aws_route_table_association" "private-main-d" {
    subnet_id = aws_subnet.private-main-d.id
    route_table_id = aws_route_table.private-main.id
}
