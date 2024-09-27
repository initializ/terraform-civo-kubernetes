# modules/civo_node_pool/variables.tf

variable "label" {
  description = "Node pool label. If not provided, a default label will be generated."
  type        = string
  default     = ""
}

variable "node_count" {
  description = "Number of nodes in the node pool."
  type        = number

  validation {
    condition     = var.node_count >= 1
    error_message = "The node_count must be at least 1."
  }
}

variable "size" {
  description = "Size of the nodes in the node pool."
  type        = string
}

variable "labels" {
  description = "A map of labels to assign to the node pool."
  type        = map(string)
  default     = {}
}

variable "taint" {
  description = "A list of taints to apply to the nodes in the node pool."
  type = list(object({
    key    = string
    value  = string
    effect = string
  }))
  default = []
}

variable "kubernetes_cluster_id" {
  description = "The ID of the Civo Kubernetes cluster."
  type        = string
}
