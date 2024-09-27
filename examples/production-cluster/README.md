# Production Grade CIVO Kubernetes Cluster with CIVO Object Storage as State Store

This folder shows an example of how to use CIVO Kubernetes Module with CIVO Object Storage as S3 Backend for terraform state

### Export your CIVO_TOKEN

```
export CIVO_TOKEN=<your civo token>
```

### **initializ** Terraform

```
terraform init -backend-config="bucket=<replace with CIVO Object Store Name>" -backend-config="key=<replace with state file name with folder path>" -backend-config="region=<replace with CIVO region>"
```

### Terrafrom Plan

```
terraform plan
```

### Terrafrom Apply

```
terraform apply
```