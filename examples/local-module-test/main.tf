module "civo_kubernetes" {
    source  = "../../"

    region              = var.region
    cluster_name        = var.cluster_name
    cluster_version     = var.cluster_version
    cluster_type        = var.cluster_type
    node_label          = var.node_label
    node_instance_size  = var.node_instance_size
    node_count          = var.node_count
    node_pool_labels    = var.node_pool_labels
    taint               = var.taint
    cni                 = var.cni
    network_name        = var.network_name
    applications        = var.applications
    node_pools          = var.node_pools

}