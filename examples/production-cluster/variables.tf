
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

variable "cluster_version" {
  type        = string
  description = "supported kubernetes version of the k3s or talos cluster"
  default     = "1.28.7-k3s1"
}

variable "cluster_type" {
  type        = string
  description = "type of the kubernetes cluster k3 or talos"
  default     = "k3s"
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
  description = "A list of node pool configurations to add to the Kubernetes cluster."
  type = list(object({
    label               = optional(string, "")  # Optional label; defaults handled in module
    node_count          = number                # Number of nodes in the node pool
    size                = string                # Size/type of the node instances
    labels              = optional(map(string), {})  # Additional labels
    taint               = optional(list(object({
      key    = string
      value  = string
      effect = string
    })), [])  # List of taints
  }))
  default = []
}

variable "taint" {
  description = "A set of taints to apply to the nodes in the node pool."
  type = set(object({
    key    = string
    value  = string
    effect = string
  }))
  default = []
}

variable "node_pool_labels" {
  description = "Additional labels for the node pool."
  type        = map(string)
  default     = {}
}

variable "applications" {
  description = "Comma Separated list of Application to be installed"
  type        = string
  default     = "-traefik2-nodeport, metrics-server"
}