resource "exec" "setup_app_config" {
  target  = resource.container.workstation
  script  = "scripts/exec/setup_app_config/script.sh"
  timeout = "30s"
}
