# Elastic IP: NAT Gateway作成に必要
resource "aws_eip" "nat-a" {
    vpc = true
}

resource "aws_eip" "nat-c" {
    vpc = true
}

resource "aws_eip" "nat-d" {
    vpc = true
}

resource "aws_nat_gateway" "public-a" {
    allocation_id = aws_eip.nat-a.id
    connectivity_type = "public"
    subnet_id = data.aws_subnet.public-a.id
    private_ip = "${local.cidr[terraform.workspace]}.4"
    depends_on = [
        data.aws_internet_gateway.main
    ]
}

resource "aws_nat_gateway" "public-c" {
    allocation_id = aws_eip.nat-c.id
    connectivity_type = "public"
    subnet_id = data.aws_subnet.public-c.id
    private_ip = "${local.cidr[terraform.workspace]}.20"
    depends_on = [
        data.aws_internet_gateway.main
    ]
}

resource "aws_nat_gateway" "public-d" {
    allocation_id = aws_eip.nat-d.id
    connectivity_type = "public"
    subnet_id = data.aws_subnet.public-d.id
    private_ip = "${local.cidr[terraform.workspace]}.36"
    depends_on = [
        data.aws_internet_gateway.main
    ]
}
