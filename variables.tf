/*variable "ibmcloud_api_key" {
  description = "IBM Cloud Platform API Key"
}

variable "resource_group_name" {
  description = "Where to create resources"
  default = "Default"
}*/

variable "vpc_name" {
 default     = "test"
}

output "schematics_workspace_id" {
  description = "ID of the IBM Cloud Schematics workspace. Returns null if not ran in Schematics"
  value       = var.IC_SCHEMATICS_WORKSPACE_ID
}

variable "IC_SCHEMATICS_WORKSPACE_ID" {
  default     = ""
  type        = string
  description = "leave blank if running locally. This variable will be automatically populated if running from an IBM Cloud Schematics workspace"
}

