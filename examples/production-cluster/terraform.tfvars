region              = "NYC1"
cluster_name        = "production"
cluster_version     = "1.28.7-k3s1"
cluster_type        = "k3s"
node_label          = "production-node-pool"
node_pool_labels = {
  node = "controller"
}
taint = [
      {
        key    = "CriticalAddonsOnly"
        value  = "true"
        effect = "NoSchedule"
      }
    ]
node_instance_size  = "g4s.kube.small"
node_count          = 3
cni                 = "cilium"
network_name        = "default"
applications        = "metrics-server,civo-cluster-autoscaler"

node_pools = [
  {
    label               = "production-large-node-pool"
    node_count          = 1
    size                = "g4s.kube.large"  # Example size; adjust based on Civo's offerings
    labels = {
      environment = "production"
      team        = "devops"
      size        = "large"
    }
    taint = [
      {
        key    = "size"
        value  = "large"
        effect = "NoSchedule"
      }
    ]
  },
  {
    label               = "production-small-node-pool"
    node_count          = 3
    size                = "g4s.kube.small"
    labels = {
      environment = "production"
      team        = "devops"
      size        = "small"
    }
  }
]