terraform {
  required_providers {
    minikube = {
      source = "scott-the-programmer/minikube"
      version = "0.3.8"
    }
  }
}

resource "minikube_cluster" "docker" {
  driver       = "docker"
  cluster_name = "minikube"
  addons = [
    "default-storageclass",
    "storage-provisioner",
    "dashboard"
  ]
}

provider "kubernetes" {
  host = minikube_cluster.docker.host

  client_certificate     = minikube_cluster.docker.client_certificate
  client_key             = minikube_cluster.docker.client_key
  cluster_ca_certificate = minikube_cluster.docker.cluster_ca_certificate
}