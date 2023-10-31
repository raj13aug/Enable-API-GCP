variable "gcp_service_list" {
  type        = list(string)
  description = "The list of apis necessary for the project"
  default     = []
}

variable "project_id" {
  type = string
}