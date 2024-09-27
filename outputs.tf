output "kubernetes_cluster_name" {
  value = civo_kubernetes_cluster.this.name
}

output "kubernetes_cluster_endpoint" {
  value = civo_kubernetes_cluster.this.api_endpoint
}

output "kubernetes_cluster_id" {
  value = civo_kubernetes_cluster.this.id
} 

output "kubernetes_cluster_status" {
  value = civo_kubernetes_cluster.this.status
}

output "kubernetes_cluster_ready" {
  value = civo_kubernetes_cluster.this.ready
}

output "kubernetes_cluster_version" {
  value = civo_kubernetes_cluster.this.kubernetes_version
}

output "network_id" {
  description = "The ID of the Civo Network."
  value       = local.network_id
}

output "node_pool_ids" {
  description = "List of IDs of the Civo Kubernetes Node Pools."
  value       = [for pool in module.civo_node_pools : pool.node_pool_id]
}

output "node_pool_instance_names" {
  description = "List of instance names in each node pool."
  value = {
    for pool_key, pool in module.civo_node_pools :
    pool_key => pool.instance_names
  }
}