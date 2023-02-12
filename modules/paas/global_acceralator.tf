resource "aws_globalaccelerator_accelerator" "main" {
    name = "${local.env[terraform.workspace]}-ga"
    ip_address_type = "IPV4"
    enabled = true
}
