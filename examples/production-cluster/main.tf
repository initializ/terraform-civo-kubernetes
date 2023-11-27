module "civo_kubernetes" {
    source  = "initializ/kubernetes/civo"
    version = "0.1.0"

    region              = var.region
    cluster_name        = var.cluster_name
    k3s_version         = var.k3s_version
    node_label          = var.node_label
    node_instance_size  = var.node_instance_size
    node_count          = var.node_count
    cni                 = var.cni
    network_name        = var.network_name
    applications        = var.applications

}