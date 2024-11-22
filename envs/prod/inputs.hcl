inputs = {
    region = "europe-west3"
    zone = "europe-west1-b"   
    subnet_ip_cidr_range = "10.1.1.0/24"
    network_name = local.network_name
    router_name = local.router_name
    gateway_name = local.gateway_name
    external_ip_name = local.external_ip_name
}

locals {
    env =  "${basename(get_terragrunt_dir())}"
    router_name = "${local.env}-nat-router"
    gateway_name = "${local.env}-nat-gateway"
    external_ip_name = "${local.env}-external-ip"
    network_name = "${local.env}-web"
}