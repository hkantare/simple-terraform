
data "ibm_resource_group" "group" {
  name = "Default"
}

/*resource "ibm_cd_toolchain" "cd_toolchain_instance" {
  description = "A sample toolchain to test the API"
  name = "TestToolchainV2"
  resource_group_id = "${data.ibm_resource_group.group.id}"
}*/

resource "ibm_is_vpc" "vpc" {
  name           = "${var.vpc_name}"
  resource_group = "${data.ibm_resource_group.group.id}"
  tags = ["tag1","tag2"]
}


/*resource "ibm_is_vpc" "vpc1" {
  name           = "${var.vpc_name}1"
  resource_group = "${data.ibm_resource_group.group.id}"
  //default_security_group_name = "unseated-spoilage-surpass-prompt"
  tags = ["tag1","tag2"]
}*/

/*resource "ibm_resource_group" "grp" {
  name           = "mygrp-today"
}*/

/*locals {
email_stss = ["tanya.shanker@ibm.com"]
}

# STSS
resource "ibm_iam_user_invite" "stss" {
  users         = local.email_stss
  access_groups = [ibm_iam_access_group.stss.id]
  lifecycle {ignore_changes = [invited_users]}
}

resource "ibm_iam_access_group" "stss" {
  name                               = "RN-STSS-1"
  description                        = "STSS"
}

data "ibm_iam_access_group" "accgroup" {
  access_group_name = "VPC"
}

resource "null_resource" "test" {
   provisioner "local-exec" {
    command = "echo hello"
     }
  
  }
  
data "ibm_is_vpc" "vpc" {
  count = 150
  name = "vpc-2fb2" 
}

data "ibm_is_subnet" "subnet" {
  count = 5
  name = "subnet-2fb2" 
  depends_on = [data.ibm_is_vpc.vpc[0]]
}*/
