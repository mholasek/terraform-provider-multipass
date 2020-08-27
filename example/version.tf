terraform {
  required_providers {
    multipass = {
      source = "nobody.io/nobody/multipass"
      # https://www.terraform.io/docs/configuration/providers.html#provider-source
    }
  }
  required_version = ">= 0.13"
}