# modules/civo_node_pool/main.tf

resource "civo_kubernetes_node_pool" "this" {
  cluster_id = var.kubernetes_cluster_id
  size       = var.size
  node_count = var.node_count

  # Labels
  labels = var.labels

  # Taints
  dynamic "taint" {
    for_each = var.taint
    content {
      key    = taint.value.key
      value  = taint.value.value
      effect = taint.value.effect
    }
  }

  lifecycle {
    create_before_destroy = true
  }
}
