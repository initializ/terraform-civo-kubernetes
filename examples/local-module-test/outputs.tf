output "kubernetes_cluster_name" {
  value = module.civo_kubernetes.kubernetes_cluster_name
}

output "kubernetes_cluster_endpoint" {
  value = module.civo_kubernetes.kubernetes_cluster_endpoint
}

output "kubernetes_cluster_id" {
  value = module.civo_kubernetes.kubernetes_cluster_id
} 

output "kubernetes_cluster_status" {
  value = module.civo_kubernetes.kubernetes_cluster_status
}

output "kubernetes_cluster_ready" {
  value = module.civo_kubernetes.kubernetes_cluster_ready
}

output "kubernetes_cluster_version" {
  value = module.civo_kubernetes.kubernetes_cluster_version
}

output "node_pool_ids" {
  description = "List of IDs of the Civo Kubernetes Node Pools."
  value       = module.civo_kubernetes.node_pool_ids
}

output "node_pool_instance_names" {
  description = "List of instance names in each node pool."
  value = module.civo_kubernetes.node_pool_instance_names
}