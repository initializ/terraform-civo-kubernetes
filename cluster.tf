resource "civo_kubernetes_cluster" "this" {
  name = var.cluster_name

  kubernetes_version = var.cluster_version
  cluster_type       = var.cluster_type
  network_id         = local.network_id
  firewall_id        = civo_firewall.this.id
  region             = var.region

  cni = var.cni

  pools {
    label               = var.node_label
    node_count          = var.node_count
    size                = var.node_instance_size
    labels              = var.node_pool_labels
    dynamic "taint" {
    for_each = var.taint
    content {
      key    = taint.value.key
      value  = taint.value.value
      effect = taint.value.effect
    }
  }
  }

  applications = var.applications
  tags = var.tags
}