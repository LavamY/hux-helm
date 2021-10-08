terraform {
  source = "/Users/layadav/Desktop/Lavam/hux/helm/mongodb"
}
remote_state {
    backend = "azurerm"
    generate = {
    path = "backend.tf"
    if_exists = "overwrite_terragrunt"
    }
    config = {
        key = "${path_relative_to_include()}/terraform.tfstate"
        resource_group_name = "lavamrsg"
        storage_account_name = "lavamsa"
        container_name = "lavamtfstate"
        key = "lavam.terraform.tfstate"
    }
}

inputs = {
replica_count        = "4"
fullnameOverride     = "mongobd-hux"
rootPassword         = "hasher"
username             = "hasher"
password             = "hasher"
database             = "hasher"

}