
variable "region" {
  type        = string
  description = "The region in which the cluster should be created."
  default     = "NYC1"
}

variable "cluster_name" {
  type        = string
  description = "name of the kubernetes cluster"
  default     = "core"
}

variable "node_label" {
  type        = string
  description = "Label of the main node pool"
  default     = "core"
}

variable "node_count" {
  type        = number
  description = "Number of nodes into the cluster"
  default     = 1
}

variable "node_instance_size" {
  type        = string
  description = "Instance type of the target nodes."
  default     = "g4s.kube.medium"
}

variable "cni" {
  type        = string
  description = "The cni for the k3s to install"
  default     = "cilium"
}

variable "k3s_version" {
  type        = string
  description = "supported version of the k3s cluster"
  default     = "1.26.4-k3s1"
}

variable "network_name" {
  type        = string
  description = "name of the network to be created"
  default     = "default"
}

variable "authorized_networks" {
  type        = set(string)
  description = "Authorized networks for Kubernetes API server"
  default     = ["0.0.0.0/0"]
}

variable "tags" {
  type        = string
  description = "Tags"
  default     = "terraform"
}

variable "node_pools" {
  description = "Addons node pools"
  type = list(object({
    label      = string
    node_count = number
    size       = string
    region     = string
  }))
  default = []
}

variable "applications" {
  description = "Comma Separated list of Application to be installed"
  type        = string
  default     = "-traefik2-nodeport, metrics-server"
}