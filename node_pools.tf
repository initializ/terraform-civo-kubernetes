# node_pools.tf

module "civo_node_pools" {
  source = "./modules/civo_node_pool"

  for_each = { for idx, pool in var.node_pools : pool.label != "" ? pool.label : "node_pool_${idx}" => pool }

  label               = each.value.label
  node_count          = each.value.node_count
  size                = each.value.size
  labels              = each.value.labels
  taint               = each.value.taint
  kubernetes_cluster_id = civo_kubernetes_cluster.this.id
}

