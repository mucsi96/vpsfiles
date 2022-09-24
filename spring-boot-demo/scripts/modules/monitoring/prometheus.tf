resource "helm_release" "prometheus" {
  chart            = "prometheus"
  name             = "prometheus"
  namespace        = var.namespace
  create_namespace = true
  repository       = "https://prometheus-community.github.io/helm-charts"
  version          = "15.13.0"

  set {
    name  = "server.resources.limits.cpu"
    value = "400m"
  }

  set {
    name  = "server.resources.limits.memory"
    value = "500Mi"
  }

  set {
    name  = "server.resources.requests.cpu"
    value = "100m"
  }

  set {
    name  = "server.resources.requests.memory"
    value = "30Mi"
  }
}