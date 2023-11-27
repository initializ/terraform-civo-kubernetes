resource "civo_kubernetes_cluster" "this" {
  name = var.cluster_name

  kubernetes_version = var.k3s_version
  network_id         = civo_network.this.id
  firewall_id        = civo_firewall.this.id
  region             = var.region

  cni = var.cni

  pools {
    label      = var.node_label
    node_count = var.node_count
    size       = var.node_instance_size
  }

  applications = var.applications
  tags = var.tags
}