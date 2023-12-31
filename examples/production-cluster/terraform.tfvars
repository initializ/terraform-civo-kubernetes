region              = "NYC1"
cluster_name        = "production"
k3s_version         = "1.27.1-k3s1"
node_label          = "production"
node_instance_size  = "g4p.kube.medium"
node_count          = 3
cni                 = "cilium"
network_name        = "production"
applications        = "metrics-server,civo-cluster-autoscaler,prometheus-operator"