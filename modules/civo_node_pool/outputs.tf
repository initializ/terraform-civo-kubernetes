# modules/civo_node_pool/outputs.tf

output "node_pool_id" {
  description = "The ID of the Civo Kubernetes Node Pool."
  value       = civo_kubernetes_node_pool.this.id
}

output "instance_names" {
  description = "The names of the instances in the node pool."
  value       = civo_kubernetes_node_pool.this.instance_names
}
