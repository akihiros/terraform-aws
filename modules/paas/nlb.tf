resource "aws_lb" "public" {
    name = "${local.env[terraform.workspace]}-public-nlb"
    internal = false
    load_balancer_type = "network"
    subnet_mapping {
        subnet_id = data.aws_subnet.public-a.id
        allocation_id = aws_globalaccelerator_accelerator.main.id
    }
    subnet_mapping {
        subnet_id = data.aws_subnet.public-c.id
        allocation_id = aws_globalaccelerator_accelerator.main.id
    }
    subnet_mapping {
        subnet_id = data.aws_subnet.public-d.id
        allocation_id = aws_globalaccelerator_accelerator.main.id
    }
    tags = {
        Name = "${local.env[terraform.workspace]}-public-nlb"
    }
}
