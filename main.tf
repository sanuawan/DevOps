terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

resource "local_file" "k8s_deployment_status" {
  filename = "${path.module}/k8s_deployment_log.txt"
  content  = "DevOps Lab: Laravel Application successfully deployed via automated infrastructure pipeline."
}