generate "backend" {
    path = "backend.tf"
    if_exists = "overwrite_terragrunt"
    contents = <<EOF
terraform {
    backend "gcs" {
        bucket  = "emil-d-demo-terraform"
        prefix = "tfstate/${path_relative_to_include()}"
  }
}
EOF

}