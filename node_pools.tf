resource "civo_kubernetes_node_pool" "this" {
  count = length(var.node_pools)

  cluster_id = civo_kubernetes_cluster.this.id
  region     = var.node_pools[count.index].region
  label      = var.node_pools[count.index].label
  node_count = var.node_pools[count.index].node_count
  size       = var.node_pools[count.index].size
}