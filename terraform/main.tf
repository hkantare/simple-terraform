data "ibm_resource_group" "group" {
  name = "${var.resource_group_name}"
}

variable "resource_group_name" {
  description = "Where to create resources"
  default = "Default"
}
