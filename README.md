# CIVO Kubernetes
Terraform module to create Production Grade CIVO Kubernetes cluster and associated resources

Features enabled:
* Network Creation
* Firewall Creation with access via Authorized Network
* Application Installation

## Usage

You can find a fully functional, production-ready example on the `examples/` folder.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_civo"></a> [civo](#requirement\_civo) | >= 1.0.39 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_civo"></a> [civo](#provider\_civo) | >= 1.0.39 |


## Resources

| Name | Type |
|------|------|
| [civo_firewall.this](https://registry.terraform.io/providers/civo/civo/latest/docs/resources/firewall) | resource |
| [civo_kubernetes_cluster.this](https://registry.terraform.io/providers/civo/civo/latest/docs/resources/kubernetes_cluster) | resource |
| [civo_kubernetes_node_pool.this](https://registry.terraform.io/providers/civo/civo/latest/docs/resources/kubernetes_node_pool) | resource |
| [civo_network.this](https://registry.terraform.io/providers/civo/civo/latest/docs/data-sources/network) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_authorized_networks"></a> [authorized\_networks](#input\_authorized\_networks) | Authorized networks for Kubernetes API server | `set(string)` | <pre>[<br>  "0.0.0.0/0"<br>]</pre> | no |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | name of the kubernetes cluster | `string` | `"initializ-sandbox"` | yes |
| <a name="input_cni"></a> [cni](#input\_cni) | The cni for the k3s to install | `string` | `"cilium"` | no |
| <a name="input_k3s_version"></a> [k3s\_version](#input\_k3s\_version) | supported version of the k3s cluster | `string` | `"1.26.4-k3s1"` | no |
| <a name="input_network_name"></a> [network\_name](#input\_network\_name) | name of the network to be created | `string` | `"initializ-sandbox"` | no |
| <a name="input_node_count"></a> [node\_count](#input\_node\_count) | Number of nodes into the cluster | `number` | `1` | no |
| <a name="input_node_instance_size"></a> [node\_instance\_size](#input\_node\_instance\_size) | Instance type of the target nodes. | `string` | `"g4s.kube.medium"` | no |
| <a name="input_node_label"></a> [node\_label](#input\_node\_label) | Label of the main node pool | `string` | `"initializ-sandbox"` | no |
| <a name="input_node_pools"></a> [node\_pools](#input\_node\_pools) | Addons node pools | <pre>list(object({<br>    label      = string<br>    node_count = number<br>    size       = string<br>    region     = string<br>  }))</pre> | `[]` | no |
| <a name="input_region"></a> [region](#input\_region) | The region in which the cluster should be created. | `string` | `"NYC1"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags | `string` | `"initializ-sandbox"` | no |

## Outputs

| Name                     | Description                  |
| ------------------------ | ---------------------------- |
| kubernetes_cluster_name              | The name of the CIVO Kubernetes cluster             |
| kubernetes_cluster_endpoint           | Endpoint for your Kubernetes API server |
| kubernetes_cluster_id              | The id of the CIVO Kubernetes cluster        |
| kubernetes_cluster_status             | Status of the Cluster if it's Active or not                 |
| kubernetes_cluster_ready             | Is cluster really ready                 |
| kubernetes_cluster_version        | Kubernetes Cluster version             |