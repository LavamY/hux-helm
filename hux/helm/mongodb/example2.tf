provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

resource "helm_release" "mongodb" {
  name       = "mongodb"

  repository = "https://charts.bitnami.com/bitnami"
  chart      = "mongodb"

#   set {
#     name  = "service.type"
#     value = "ClusterIP"
#   }
}