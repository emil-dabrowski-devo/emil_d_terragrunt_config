terraform {
    source = "git::git@github.com:devoteamgcloud/emil_d_terragrunt.git//modules/net"

}

include "root" {
    path = find_in_parent_folders()
}

include "inputs" {
    path   = "${get_terragrunt_dir()}/inputs.hcl"
}
