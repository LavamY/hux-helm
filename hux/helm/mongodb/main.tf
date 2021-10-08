provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

resource "helm_release" "mongodb" {
  name       = "mongodb"

  repository = "https://charts.bitnami.com/bitnami"
  chart      = "mongodb"

  set {
     name  = "hidden.replicaCount"
     value = "${var.replica_count}"
  }

  set {
     name  = "replicaCount"
     value = "${var.replica_count}"
  }

  set {
    name  = "fullnameOverride"
    value = "${var.fullnameOverride}"
  }
  set {
    name  = "auth.rootPassword"
    value = "${var.rootPassword}"
  }
  set {
    name  = "auth.username"
    value = "${var.username}"
  }
  set {
    name  = "auth.password"
    value = "${var.password}"
   }
  set {
    name  = "auth.database"
    value = "${var.database}"
   }
}