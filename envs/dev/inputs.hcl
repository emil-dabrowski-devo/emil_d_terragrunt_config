inputs = {
    region = "europe-west1"
    zone = "europe-west3-b"   
    subnet_ip_cidr_range = "10.1.2.0/24"
    network_name = "${local.env}-web"
    router_name = "${local.env}-nat-router"
    gateway_name = "${local.env}-nat-gateway"
    external_ip_name = "${local.env}-external-ip"
}

locals {
    env =  "${basename(get_terragrunt_dir())}"
    router_name = "${local.env}-nat-router"
    gateway_name = "${local.env}-nat-gateway"
    external_ip_name = "${local.env}-external-ip"
    network_name = "${local.env}-web"
}