# Generated by Terragrunt. Sig: nIlQXj57tbuaRZEa
terraform {
    backend "gcs" {
        bucket  = "emil-d-demo-terraform"
        prefix = "tfstate/."
  }
}
