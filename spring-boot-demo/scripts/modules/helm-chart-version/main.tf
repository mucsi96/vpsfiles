module "chart_version" {
  source     = "../version"
  tag_prefix = var.tag_prefix
  path       = var.path
}

data "external" "version" {
  program     = ["${path.module}/command.sh"]
  working_dir = var.path
  query = {
    app_version   = var.app_version
    chart_version = module.chart_version.version
  }
}
