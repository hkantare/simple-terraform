data "ibm_resource_group" "group" {
  name = "${var.resource_group_name}"
}

variable "resource_group_name" {
  description = "Where to create resources"
  default = "Default"
}


terraform {
  //required_version = "~> 1.1"
  required_providers {
    ibm = {
      source = "IBM-Cloud/ibm"
      version = "1.43.0"
    }
  }
}

provider "ibm" {
  # Configuration options
  visibility = "private"
}
