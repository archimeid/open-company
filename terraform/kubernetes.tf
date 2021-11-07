terraform {
    required_providers {
        kubernetes = {
            source = "hashicorp/kubernetes"
        }
    }
}

variable "host" {
    type = string
}

variable "client_certificate" {
    type = string
}

variable "client_key" {
    type = string
}

variable "cluster_ca_certificate" {
    type = string
}

provider "kubernetes" {
    host = var.kubernetes_host
    client_certificate = base64decode(var.kubernetes_client_certificate)
    client_key = base64decode(var.kubernetes_client_key)
    cluster_ca_certificate = base64decode(var.kubernetes_cluster_ca_certificate)
}