region              = "NYC1"
cluster_name        = "local-module-test"
cluster_version     = "1.28.7-k3s1"
cluster_type        = "k3s"
node_label          = "local-module-test"
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
node_instance_size  = "g4s.kube.xsmall"
node_count          = 1
cni                 = "cilium"
network_name        = "default"
applications        = "metrics-server,civo-cluster-autoscaler,prometheus-operator"

node_pools = [
  {
    label               = "production-node-pool"
    node_count          = 1
    size                = "g4s.kube.xsmall"  # Example size; adjust based on Civo's offerings
    labels = {
      environment = "production"
      team        = "devops"
    }
    taint = [
      {
        key    = "dedicated"
        value  = "gpu"
        effect = "NoSchedule"
      }
    ]
  },
  {
    label               = "staging-node-pool"
    node_count          = 1
    size                = "g4s.kube.xsmall"
    labels = {
      environment = "staging"
      team        = "qa"
    }
    taint = [
      {
        key    = "environment"
        value  = "staging"
        effect = "PreferNoSchedule"
      }
    ]
  }
]