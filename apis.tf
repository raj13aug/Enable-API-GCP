locals {
  all_project_services = concat(var.gcp_service_list, [
    "storage.googleapis.com",
  ])
}

resource "google_project_service" "enabled_apis" {
  depends_on                 = [google_project_service.cloudresourcemanager_api]
  project                    = var.project_id
  for_each                   = toset(local.all_project_services)
  service                    = each.key
  disable_dependent_services = true
  disable_on_destroy         = true
}