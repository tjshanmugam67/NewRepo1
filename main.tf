# We first specify the terraform provider. 
# Terraform will use the provider to ensure that we can work with Microsoft Azure

terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.33.0"
    }
  }
}

# Here we need to mention the Azure AD Application Object credentials to allow us to work with 
# our Azure account

provider "azurerm" {
  subscription_id = "82204c8e-4e2d-4e57-b4fa-0d0f5e0ccb5d"
  client_id       = "e5fb0589-de09-4dec-9df8-d65e67c2861c"
  client_secret   = "Yoh8Q~6~B7QwGUQ5nxDIDnLtdTeywIS3LoC3IaFS"
  tenant_id       = "405fc661-8dff-4773-b0b4-67975890ff5b"
  features {}
}

# The resource block defines the type of resource we want to work with
# The name and location are arguements for the resource block

resource "azurerm_resource_group" "app_grp"{
  name="app-grp" 
  location="North Europe"
}