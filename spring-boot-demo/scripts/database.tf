resource "helm_release" "database" {
  name             = var.app.database.host
  namespace        = var.app.namespace
  create_namespace = true
  chart            = "../charts/database"

  set {
    name  = "name"
    value = var.app.namespace
  }

  set {
    name  = "service.port"
    value = var.app.database.port
  }

  set {
    name  = "rootPassword"
    value = var.app.database.root_password
  }

  set {
    name  = "userName"
    value = var.app.database.user_name
  }

  set {
    name  = "password"
    value = var.app.database.password
  }
}
