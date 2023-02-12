resource "aws_network_acl" "public" {
    vpc_id = data.aws_vpc.main.id
    subnet_ids = [
        data.aws_subnet.public-a.id,
        data.aws_subnet.public-c.id,
        data.aws_subnet.public-d.id
    ]
    # egress {

    # }
    # ingress {

    # }
    tags = {
        Name = "${local.env[terraform.workspace]}-public-acl"
    }
}

resource "aws_network_acl" "private-db" {
    vpc_id = data.aws_vpc.main.id
    subnet_ids = [
        data.aws_subnet.private-db-a.id,
        data.aws_subnet.private-db-c.id,
        data.aws_subnet.private-db-d.id
    ]
    # egress {

    # }
    # ingress {

    # }
    tags = {
        Name = "${local.env[terraform.workspace]}-private-db-acl"
    }
}

resource "aws_network_acl" "private-main-a" {
    vpc_id = data.aws_vpc.main.id
    subnet_ids = [
        data.aws_subnet.private-main-a.id,
        data.aws_subnet.private-main-c.id,
        data.aws_subnet.private-main-d.id
    ]
    # egress {

    # }
    # ingress {

    # }
    tags = {
        Name = "${local.env[terraform.workspace]}-private-main-acl"
    }
}
